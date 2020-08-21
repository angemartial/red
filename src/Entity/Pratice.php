<?php

namespace App\Entity;

use App\Entity\User;
use Cocur\Slugify\Slugify;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\PraticeRepository;
use Doctrine\Common\Collections\Collection;
use Symfony\Component\HttpFoundation\File\File;
use Doctrine\Common\Collections\ArrayCollection;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Entity(repositoryClass=PraticeRepository::class)
 * @UniqueEntity("title")
 * @Vich\Uploadable
 *  @ORM\HasLifecycleCallbacks
 */
class Pratice
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * 
     * @Vich\UploadableField(mapping="articles_image", fileNameProperty="filename")
     * 
     * @var File|null
     */
    private $imageFile;

    /**
     * @ORM\Column(type="string")
     *
     * @var string|null
     */
    private $filename;


    /**
     * @ORM\Column(type="datetime")
     *
     * @var \DateTimeInterface|null
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Length(min = 10, max = 255, minMessage = "Votre titre doit faire au moins 10 caractères")
     */
    private $title;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $slug;

    /**
     * @ORM\Column(type="text")
     * @Assert\Length(min = 20, minMessage = "Votre introduction doit faire au moins 20 caractères")
     */
    private $introduction;

    /**
     * @ORM\Column(type="text")
     * @Assert\Length(min = 100, minMessage = "Votre description doit faire au moins 100 caractères")
     */
    private $content;

    /**
     * @ORM\Column(type="boolean", options={"default": false})
     */
    private $state;

   
    
  
    public function __construct()
    {
        $this->images = new ArrayCollection();
        $this->state = new ArrayCollection();
        $this->comments = new ArrayCollection();
    }

     /**
     * @ORM\PrePersist
     */
    public function setupdateAtValue()
    {
         $this->updatedAt = new \DateTime();
    }

        

    /**
     * permet d'initialiser un slug!
     * 
     * @ORM\PrePersist
     * @ORM\PreUpdate
     *
     * @return void
     */
    public function initialiazeSlug(){
        if(empty($this->slug)){
            $slugify = new Slugify();
            $this->slug = $slugify->slugify($this->title);
        }

    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    public function getIntroduction(): ?string
    {
        return $this->introduction;
    }

    public function setIntroduction(string $introduction): self
    {
        $this->introduction = $introduction;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function getState(): ?bool
    {
        return $this->state;
    }

    public function setState(bool $state): self
    {
        $this->state = $state;

        return $this;
    }

   
    public function setImageFile(?File $imageFile = null): void
    {
        $this->imageFile = $imageFile;

        // Only change the updated af if the file is really uploaded to avoid database updates.
        // This is needed when the file should be set when loading the entity.
        if ($this->imageFile instanceof UploadedFile) {
            $this->updatedAt = new \DateTime('now');
        }
    }

    public function getImageFile(): ?File
    {
        return $this->imageFile;
    }

    public function setFilename(?string $filename): void
    {
        $this->filename = $filename;
    }

    public function getFilename(): ?string
    {
        return $this->filename;
    }
    
    
}
