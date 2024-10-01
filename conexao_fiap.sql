CREATE OR REPLACE TRIGGER trg_semaforo_before_insert
BEFORE INSERT ON semaforo
FOR EACH ROW
BEGIN
    IF :NEW.id_semaforo IS NULL THEN
        SELECT seq_semaforo.NEXTVAL INTO :NEW.id_semaforo FROM dual;
    END IF;
END;
/
