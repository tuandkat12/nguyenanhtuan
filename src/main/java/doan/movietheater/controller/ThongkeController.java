/*	
*	(C) Copyright 2021 Fresher56. All Rights Reserved
*
* @author tuand
* @date May 8, 2021
* @ version 1.0
*/

package doan.movietheater.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import doan.movietheater.entity.Movie;
import doan.movietheater.service.impl.MovieServiceImpl;
import doan.movietheater.service.impl.ScheduleSeatServiceImpl;

@Controller
public class ThongkeController {
	@Autowired
	ScheduleSeatServiceImpl scheduleSeatServiceImpl;
	
	@Autowired
	MovieServiceImpl movieService;
	
	@GetMapping(value="/thongke")
	public String getThongkeSLV(Model model) {
		List<Movie> listMovie = movieService.getListMovie();
		model.addAttribute("listMovie", listMovie);
		return "thongkeVetheoPhim";
	}
	
	@GetMapping(value="/thongkeSLV")
	public String postThongkeSLV(@RequestParam("movieID") String movieID, Model model) {
		int tienveloai1 = 0;
		int tienveloai2 = 0;
		String tienve1="";
		String tienve2="";
		List<Object[]> listThongke = scheduleSeatServiceImpl.listThongkeSLV(movieID);
		List<Movie> listMovie = movieService.getListMovie();
		for(Object[] obj : listThongke) {
			if(((Integer) obj[2])==1) {
				tienveloai1 = ((Integer) obj[3])*60000;
			}
			if(((Integer) obj[2])==2) {
				tienveloai2 = ((Integer) obj[3])*45000;
			}
		}
		tienve1 = String.format("%,d", tienveloai1);
		tienve1 = tienve1.replace(",", ".");
		tienve2 = String.format("%,d", tienveloai2);
		tienve2 = tienve2.replace(",", ".");
		int tongtien = tienveloai1+tienveloai2;
		String tongtienve = String.format("%,d", tongtien);
		tongtienve = tongtienve.replace(",", ".");
		
		
		model.addAttribute("listMovie", listMovie);
		model.addAttribute("listThongke",listThongke);
		model.addAttribute("tienveloai1",tienve1);
		model.addAttribute("tienveloai2",tienve2);
		model.addAttribute("tongtien",tongtienve);
		return "thongkeVetheoPhim";
	}
	
//	@GetMapping(value="/thongkeThang")
//	public String getThongkeSLVThang(Model model) {
//		List<Movie> listMovie = movieService.getListMovie();
//		model.addAttribute("listMovie", listMovie);
//		return "thongkeSLVThang";
//	}
//	
//	@GetMapping(value="/thongkeSLVThang")
//	public String postThongkeSLVThang(@RequestParam("movieID") String movieID, Model model) {
//		List<Movie> listMovie = movieService.getListMovie();
//		model.addAttribute("listMovie", listMovie);
//		List<Object[]> listThongke = movieService.listThongkeSLVThang(movieID);
//		ThongkeSLVDTO slvdto;
//		List<ThongkeSLVDTO> listThongkeSLVDTO = new ArrayList<ThongkeSLVDTO>();
//		for(Object[] obj : listThongke) {
//			slvdto = new ThongkeSLVDTO();
//			slvdto.setMovieID(movieID);
//			slvdto.setMovieName(obj[1].toString());
//			int giatien = 0;
//			if(obj[2].toString().equals("1")) {
//				int a = Integer.parseInt(obj[3].toString());
//				giatien = a*60000;
//			}
//			if(obj[2].toString().equals("2")) {
//				int a = Integer.parseInt(obj[3].toString());
//				giatien = a*45000;
//			}
//			slvdto.setSlV(Integer.parseInt(obj[3].toString()));
//			slvdto.setDoanhThu(giatien);
//			slvdto.setMonth(Integer.parseInt(obj[4].toString()));
//			listThongkeSLVDTO.add(slvdto);
//		}
//		model.addAttribute("listThongkeSLVDTO",listThongkeSLVDTO);
//		for(ThongkeSLVDTO slvdto2 : listThongkeSLVDTO) {
//			slvdto2.getMovieID();
//			slvdto2.getMovieName();
//			slvdto2.getSlV();
//			slvdto2.getMonth();
//			slvdto2.getDoanhThu();
//		}
//		return "thongkeSLVThang";
//	}
}
