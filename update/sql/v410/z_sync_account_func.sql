CREATE DEFINER=`root`@`%` PROCEDURE `sync_account`()
BEGIN
    declare done INT DEFAULT 0;
    declare a_account VARCHAR(50);
    declare a_mobile VARCHAR(50);
    declare a_email VARCHAR(50);
    declare a_shop_id char(16);
    declare a_buyer_id VARCHAR(50);
    declare a_type VARCHAR(20);
    declare a_password char(32);
    declare a_salt char(32);
    declare a_create_time DATETIME DEFAULT '2018-01-01';

    declare buyer_cur cursor for select mobile, email, shop_id, buyer_id, password, salt, create_time from tbl_um_buyer;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;

    open buyer_cur;
    REPEAT
            fetch buyer_cur into a_mobile, a_email, a_shop_id, a_buyer_id, a_password, a_salt, a_create_time;

            IF a_mobile!='' THEN
            set a_account = a_mobile;
            set a_type = 'mobile';

            ELSEIF a_email!='' THEN
            set a_account = a_email;
            set a_type = 'email';

            ELSE
            set a_account = a_buyer_id;
            set a_type = 'wechat';
            END IF;

            IF NOT done THEN
            insert ignore into tbl_um_buyer_account (account, shop_id, buyer_id, password, salt, create_time, type) VALUES (a_account, a_shop_id, a_buyer_id, a_password, a_salt, a_create_time, a_type);
            END IF;
    until done
    END REPEAT;

    CLOSE buyer_cur;
END