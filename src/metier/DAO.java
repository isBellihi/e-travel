package metier;

import web.Model.SingletonConnection;

import java.sql.Connection;
import java.util.Set;

public abstract class DAO<T> {

    protected static Connection connection  ;

    public DAO(){
        connection = SingletonConnection.getInstance();
    }

    public abstract T find(int id);
    public abstract Set<T> getAll();
    public abstract boolean insert(T obj);
    public abstract boolean update(T obj);
    public abstract boolean delete(int id);
}
