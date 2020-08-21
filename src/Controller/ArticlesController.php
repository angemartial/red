<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class ArticlesController extends AbstractController
{
    /**
     * @Route("/articles", name="articles")
     */
    public function index()
    {
        return $this->render('articles/articles.html.twig', [
            'controller_name' => 'ArticlesController',
        ]);
    }
}
