<?php
 
nameSpace App\Entity\Traits;
use Doctrine\ORM\Mapping as ORM;

trait HasIdTrait{
  #[ORM\Id]
  #[ORM\GeneratedValue]
  #[ORM\Column]
  private ?int $id = null;

  public function getId(): ?int
  {
      return $this->id;
  }
}