<?php

namespace App\Controller;


use App\Entity\news;
use App\Repository\NewsRepository;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\BrowserKit\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class NewsController extends AbstractController
{
    /**
     * @Route("/news", name="news_index")
     */
    public function index(NewsRepository $repo )
    {
        $news = $repo->findAll();

        return $this->render('news/news.html.twig', [
            'news' => $news
        ]);
    }

    /**
     * permet de créer une nouvelle annonce
     *
     * @Route("/news/create", name ="news_create")
     * @param Request $request
     * @return Response
     */
    public function create()
    {
        return $this->render('news/create.html.twig');

    }


    /**
     * permet d'afficher une annonce unique
     * @Route("/news/{slug}", name="news_show")
     * @param News $new
     * @return Response
     */
    public function newShow(News $new)
    {
        return $this->render('news/newshow.html.twig', [
            'news' => $new
        ]);

    }
}
