ALTER TABLE tbl_cfg_payment DROP admin_id;
ALTER TABLE tbl_cfg_payment ADD COLUMN description VARCHAR(500) NOT NULL DEFAULT '' COMMENT '店铺支付信息描述';
INSERT INTO `tbl_cfg_payment`(`shop_id`, `is_shelf`, `pay_params`, `description`) VALUES ('-2', '0', '[{"pay_type":3,"app_id":"wx828cdea70d986606","app_secret":"5541b1334753fe24a9a6e0ccec40ae51","mch_api_key":"63ad41676cfa7d2dce6075d0bc6c704c","mch_id":"1217992201"},{"pay_type":1,"open_flag":1,"sign_type":"RSA","seller_email":"brad@wemart.cn","private_key":"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAOzNk/qyDyj/e3M/Dc/q7TXGYmBI989aeKf0FSqxW4k0OiWS7Vew2Z8045iqz0pYcPVwupMnpbXYzSpTvD5TC4QGnboASvR8I3rUZ22Niz6TfqXd/u7M+MsAGe70HauLp6M7W4dtv4WsKUvvEuYKKlZ1XLcUX+RW7JJIBipHKEjRAgMBAAECgYBR8RlhyLfCQhXf3VPUPMD0uL9V/inyUKYryCSC73hzU+VDF0KV85Z6pvyS2Zh9a3k7FVUakr+e23SzTuJ21pnG3XRtawFHA4TXCd1Nr3PjSvpB/BXPPHRHof6EE3MxZGD4hY2CKrFG6CkvsmkW3Ux1N6aQkx0TO3Fp/KODZmfsAQJBAPdrDnjeMEGr7oC8J5DCqJjM1YoCK0Gnmcd7lCpc2fpHFwre6Yz+VMOay8vJUu3iWQjoxzDEgKBbsRkEP+4UXvECQQD1BEO6Aw+gW7/oPnrr/bk8FR5wwLG6X3uE0GgtNoCzvDMpn4BSjHp4cD/AwLLk+a/wNuLu/V6a21J/KUoHrEfhAkBSWmoIxTwev9G1O+uXfZOMuLFjLHGletnu0i1xJFLRwZPj5GqsqYMhUIcBH9PgpnSoSIL0spN1zM9X2lhFMLahAkA9/0k/3RxsICssEfs6kaX4XQOp1ihil1yC29Uwc5UXZaywgIqQ2Lj4lrabCGd75u4s40aC4Ju6pXp3cLQpwt8hAkEAzCVGTQ12RkYu1oONqwjJ5wgrY0Zc+Q9BYamueLk4KdpmAGz9AXml+uhjzdsYG8ITXByLJBAyzONiGEKw1KnfaQ==","public_key":"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDI6d306Q8fIfCOaTXyiUeJHkrIvYISRcc73s3vF1ZT7XN8RNPwJxo8pWaJMmvyTn9N4HQ632qJBVHf8sxHi/fEsraprwCtzvzQETrNRwVxLO5jVmRGi60j8Ue1efIlzPXV9je9mkjzOmdssymZkh2QhUrCmZYI/FCEa3/cNMW0QIDAQAB","partner":"2088011032575589","app_id":"2016051801413162"}]', '微信版本年费充值支付配置信息');