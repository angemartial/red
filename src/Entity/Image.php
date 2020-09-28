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
     * @ORM\Id()
     * @ORM\GeneratedValue()
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
     * @ORM\ManyToMany(targetEntity=news::class, mappedBy="images", cascade={"persist"})
     */
    private $news;

    public function __construct()
    {
        $this->news = new ArrayCollection();
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
     * @return Collection|news[]
     */
    public function getNews(): Collection
    {
        return $this->news;
    }

    public function addNews(news $news): self
    {
        if (!$this->news->contains($news)) {
            $this->news[] = $news;
            $news->addImage($this);
        }

        return $this;
    }

    public function removeNews(news $news): self
    {
        if ($this->news->contains($news)) {
            $this->news->removeElement($news);
            $news->removeImage($this);
        }

        return $this;
    }
}
