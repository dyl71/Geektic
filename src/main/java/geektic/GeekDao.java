package geektic;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class GeekDao {

	@PersistenceContext
	private EntityManager em;

	public GeekDao() {
		super();
	}

	public List<Geek> findAll() {
		String jpql = "select geek from Geek geek order by geek.nom";
		return em.createQuery(jpql, Geek.class).getResultList();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void persist(Geek geek) {
		em.persist(geek);
	}

	public Geek findById(int id) {
		return em.find(Geek.class, id);
	}

}
