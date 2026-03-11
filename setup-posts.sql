SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Insert 3 sample blog posts
INSERT INTO wp_posts (post_author, post_title, post_name, post_content, post_excerpt, post_status, post_type, comment_status, ping_status, post_date, post_date_gmt, post_modified, post_modified_gmt, to_ping, pinged, post_content_filtered, guid) VALUES
(1, 'What is Home Care?', 'what-is-home-care', '<p>Home visiting care service provides professional caregivers to your home for daily support.</p>', 'Professional home care service for elderly.', 'publish', 'post', 'closed', 'closed', NOW(), UTC_TIMESTAMP(), NOW(), UTC_TIMESTAMP(), '', '', '', 'http://localhost/wordpress/?p=100'),
(1, '24h Service Available', 'service-24h', '<p>We provide 24 hours, 365 days service. Please contact us anytime.</p>', '24 hours care service available.', 'publish', 'post', 'closed', 'closed', NOW(), UTC_TIMESTAMP(), NOW(), UTC_TIMESTAMP(), '', '', '', 'http://localhost/wordpress/?p=101'),
(1, 'Custom Care Plans', 'custom-care-plan', '<p>We create fully custom care plans tailored to each individual client needs.</p>', 'Fully customized care plans for every client.', 'publish', 'post', 'closed', 'closed', NOW(), UTC_TIMESTAMP(), NOW(), UTC_TIMESTAMP(), '', '', '', 'http://localhost/wordpress/?p=102');

-- Remove default WP content
UPDATE wp_posts SET post_status = 'trash' WHERE post_name IN ('hello-world', 'sample-page') AND post_type IN ('post', 'page');

-- Confirm
SELECT post_title, post_status, post_type FROM wp_posts ORDER BY ID DESC LIMIT 8;
