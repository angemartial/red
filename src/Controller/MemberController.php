<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class MemberController extends AbstractController
{
    /**
     * @Route("/members", name="members_index")
     */
    public function index()
    {
        return $this->render('member/members.html.twig', [
            'controller_name' => 'MemberController',
        ]);
    }
}
