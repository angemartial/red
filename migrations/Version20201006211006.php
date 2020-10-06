<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20201006211006 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE method_image (method_id INT NOT NULL, image_id INT NOT NULL, INDEX IDX_7C47042C19883967 (method_id), INDEX IDX_7C47042C3DA5256D (image_id), PRIMARY KEY(method_id, image_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE method_image ADD CONSTRAINT FK_7C47042C19883967 FOREIGN KEY (method_id) REFERENCES method (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE method_image ADD CONSTRAINT FK_7C47042C3DA5256D FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE method DROP cover_image');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE method_image');
        $this->addSql('ALTER TABLE method ADD cover_image VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
