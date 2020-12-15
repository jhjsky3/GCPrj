package gc.service.trainer;

import java.util.List;

import gc.dao.trainer.TrainerDao;
import gc.dao.trainer.jdbc.JdbcTrainerDao;
import gc.entity.trainer.Trainer;

public class TrainerService {
	private TrainerDao trainerDao;
	
	public TrainerService() {
		trainerDao = new JdbcTrainerDao();
	}
	
	public int insert(Trainer trainer) {
		
		return trainerDao.insert(trainer);
	}
	
	public int update(Trainer trainer) {
		
		return trainerDao.update(trainer);
	}
	
	public int delete(int id) {
		
		return trainerDao.delete(id);
	}
	
	public Trainer get(int id) {
		
		return trainerDao.get(id);
	}
	
	public List<Trainer> getList(){
		
		return trainerDao.getList();
	}
}