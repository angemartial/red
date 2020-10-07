<?php

namespace App\Controller;


use App\Form\StoryType;
use App\Repository\StoryRepository;
use App\Entity\Story;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
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
    public function create(Request $request, EntityManagerInterface $manager)
    {
        $story = new Story();
        $form = $this->createForm(StoryType::class, $story);
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()){
            $manager->persist($story);
            $manager->flush();

            $this->addFlash(
                'success',
                'Votre actualité' .$story->getTitle(). 'a bien été envoyée'
            );

            return $this->redirectToRoute('story_show', [
                'slug' => $story->getSlug()
            ]);


        }
        return $this->render('stories/create.html.twig', [
           'form' => $form->createView()
        ]);

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
