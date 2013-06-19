package tdd;

import geektic.Geek;
import geektic.GeekDao;

import static org.junit.Assert.assertEquals;
import org.junit.Test;
import java.util.List;

public class GeekTest {
	private GeekDao geekDao;
	
	@Test
	public void testFindById() {
	Geek geek= geekDao.findById(4);
	assertEquals("Dylan",geek.getPrenom());
	}

	@Test
	public void testFindAll() {
	List<Geek> listeGeek = geekDao.findAll();
	assertEquals(4, listeGeek.size());
	}
	
}
