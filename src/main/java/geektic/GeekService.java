package geektic;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import geektic.Geek;


@Service
public class GeekService {
	
	@Autowired
	private GeekDao geekDao;
	
	public GeekService() {
		super();
	}
	
	public List<Geek> list() {
		return geekDao.findAll();
	}
	
	public void AddGeek(Geek geek){
		geekDao.persist(geek);
	}

}
