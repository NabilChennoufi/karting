<?php

namespace App\Controller;

use App\Entity\Soortactiviteit;
use App\Form\SoortactiviteitType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/soortactiviteit")
 */
class SoortactiviteitController extends AbstractController
{
    /**
     * @Route("/", name="soortactiviteit_index", methods={"GET"})
     */
    public function index(): Response
    {
        $soortactiviteiten=$this->getDoctrine()
            ->getRepository('App:Soortactiviteit')
            ->findAll();

        return $this->render('soortactiviteit/index.html.twig', [
            'soortactiviteits'=>$soortactiviteiten
        ]);
    }

    /**
     * @Route("/new", name="soortactiviteit_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $soortactiviteit = new Soortactiviteit();
        $form = $this->createForm(SoortactiviteitType::class, $soortactiviteit);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($soortactiviteit);
            $entityManager->flush();

            return $this->redirectToRoute('beheer');
        }

        return $this->render('soortactiviteit/new.html.twig', [
            'soortactiviteit' => $soortactiviteit,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="soortactiviteit_show", methods={"GET"})
     */
    public function show(Soortactiviteit $soortactiviteit): Response
    {
        return $this->render('soortactiviteit/show.html.twig', [
            'soortactiviteit' => $soortactiviteit,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="soortactiviteit_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Soortactiviteit $soortactiviteit): Response
    {
        $form = $this->createForm(SoortactiviteitType::class, $soortactiviteit);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('soortactiviteit_index');
        }

        return $this->render('soortactiviteit/edit.html.twig', [
            'soortactiviteit' => $soortactiviteit,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="soortactiviteit_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Soortactiviteit $soortactiviteit): Response
    {
        if ($this->isCsrfTokenValid('delete'.$soortactiviteit->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($soortactiviteit);
            $entityManager->flush();
        }

        return $this->redirectToRoute('soortactiviteit_index');
    }
}
