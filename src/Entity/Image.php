<?php

namespace App\Entity;

use App\Repository\ImageRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ImageRepository::class)
 */
class Image
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
    private $url;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $caption;

    /**
     * @ORM\ManyToMany(targetEntity=Story::class, mappedBy="coverImage")
     */
    private $stories;



    public function __construct()
    {
        $this->stories = new ArrayCollection();

    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(string $url): self
    {
        $this->url = $url;

        return $this;
    }

    public function getCaption(): ?string
    {
        return $this->caption;
    }

    public function setCaption(string $caption): self
    {
        $this->caption = $caption;

        return $this;
    }

    /**
     * @return Collection|Story[]
     */
    public function getStories(): Collection
    {
        return $this->stories;
    }

    public function addStories(Story $stories): self
    {
        if (!$this->stories->contains($stories)) {
            $this->stories[] = $stories;
            $stories->addCoverImage($this);
        }

        return $this;
    }

    public function removeStories(Story $stories): self
    {
        if ($this->stories->contains($stories)) {
            $this->stories->removeElement($stories);
            $stories->removeCoverImage($this);
        }

        return $this;
    }

    /**
     * toString
     * @return string
     */
    public function __toString(){
        return $this->url ?? "https://picsum.photos/200";
    }


}
