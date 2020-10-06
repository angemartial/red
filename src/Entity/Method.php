<?php

namespace App\Entity;

use App\Repository\MethodRepository;
use Cocur\Slugify\Slugify;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Entity(repositoryClass=MethodRepository::class)
 * @UniqueEntity("title")
 * @ORM\HasLifecycleCallbacks
 *
 */
class Method
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $title;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $slug;

    /**
     * @ORM\ManyToMany(targetEntity=Image::class)
     */
    private $methodCoverImage;

    public function __construct()
    {
        $this->methodCoverImage = new ArrayCollection();
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

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

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

    /**
     * @return Collection|Image[]
     */
    public function getMethodCoverImage(): Collection
    {
        return $this->methodCoverImage;
    }

    public function addMethodCoverImage(Image $methodCoverImage): self
    {
        if (!$this->methodCoverImage->contains($methodCoverImage)) {
            $this->methodCoverImage[] = $methodCoverImage;
        }

        return $this;
    }

    public function removeMethodCoverImage(Image $methodCoverImage): self
    {
        if ($this->methodCoverImage->contains($methodCoverImage)) {
            $this->methodCoverImage->removeElement($methodCoverImage);
        }

        return $this;
    }

}
