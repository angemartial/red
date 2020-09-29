<?php

namespace App\Controller;


use App\Repository\StoryRepository;
use App\Entity\Story;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class StoryController extends AbstractController
{
    /**
     * @Route("/stories", name="stories_index")
     */
    public function index(StoryRepository $repo )
    {
        $stories = $repo->findAll();

        return $this->render('stories/stories.html.twig', [
            'stories' => $stories
        ]);
    }

    /**
     * permet de créer une nouvelle annonce
     *
     * @Route("/stories/create", name ="stories_create")
     * @return Response
     */
    public function create()
    {
        return $this->render('stories/create.html.twig');

    }


    /**
     * permet d'afficher une annonce unique
     * @Route("/stories/{slug}", name="story_show")
     * @return Response
     */
    public function storyShow(Story $story)
    {
        return $this->render('stories/storyshow.html.twig', [
            'stories' => $story
        ]);

    }
}
