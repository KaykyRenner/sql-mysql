-- base_de_dados.roles definição
CREATE TABLE `roles` (
	`id` int unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- base_de_dados.users definição
CREATE TABLE `users` (
	`id` int unsigned NOT NULL AUTO_INCREMENT,
	`first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
	`last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
	`email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
	`password_hash` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	UNIQUE KEY `users_unique_email` (`email`),
	UNIQUE KEY `users_unique_password_hash` (`password_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- base_de_dados.user_roles definição
CREATE TABLE `user_roles` (
	`user_id` int unsigned NOT NULL,
	`role_id` int unsigned NOT NULL,
	`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`user_id`,`role_id`),
	KEY `user_roles_role_FK` (`role_id`),
	CONSTRAINT `user_roles_role_FK` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `user_roles_user_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- base_de_dados.profile definição
CREATE TABLE `profile` (
	`user_id` int unsigned DEFAULT NULL,
	`bio` text COLLATE utf8mb4_unicode_ci,
	`description` text COLLATE utf8mb4_unicode_ci,
	`id` int unsigned NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`),
	KEY `profile_user_FK` (`user_id`),
	CONSTRAINT `profile_user_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
