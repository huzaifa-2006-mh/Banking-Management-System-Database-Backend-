CREATE TRIGGER check_negative
BEFORE UPDATE ON account FOR EACH ROW
BEGIN
IF :NEW.balance<0 THEN
RAISE_APPLICATION_ERROR(-20001,'balance cannot be negative');
END IF;
END;
