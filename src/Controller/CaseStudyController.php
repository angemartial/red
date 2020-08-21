<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class CaseStudyController extends AbstractController
{
    /**
     * @Route("/case_study", name="case_study")
     */
    public function index()
    {
        return $this->render('case_study/case.html.twig', [
            'controller_name' => 'CaseStudyController',
        ]);
    }
}
