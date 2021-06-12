package br.com.elit.ps13si.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.elit.ps13si.model.CursoModel;
import br.com.elit.ps13si.repository.CursosRepository;

@Controller
@RequestMapping("/curso")
public class CursoController {

	private static final String CURSO_FOLDER = "curso/";

	@Autowired
	CursosRepository cursoRep;

	@GetMapping("/form")
	public String openForm(@RequestParam String page, @RequestParam(required = false) Long id,
			@ModelAttribute("cursoModel") CursoModel cursoModel, Model model) {
		
		if("atualizarCurso".equals(page)) {
			model.addAttribute("cursoModel", cursoRep.findById(id).get());
		}
		
		return CURSO_FOLDER + page;
	}

	@GetMapping
	public String getAll(Model model) {

		model.addAttribute("cursos", cursoRep.findAll());

		return CURSO_FOLDER + "cursos";
	}

	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {

		model.addAttribute("curso", cursoRep.findById(id).get());

		return CURSO_FOLDER + "detalhe-curso";
	}

	@PostMapping
	public String save(@Valid CursoModel cursoModel, BindingResult bindingResult, RedirectAttributes redirectAttributes,
			Model model) {

		if (bindingResult.hasErrors()) {
			return CURSO_FOLDER + "curso-cadastro";
		}

		cursoRep.save(cursoModel);
		redirectAttributes.addFlashAttribute("messages", "Curso cadastrado com sucesso");
		return "redirect:/curso";
	}

	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid CursoModel cursoModel, BindingResult bindingResult,
			RedirectAttributes redirectAttributes, Model model) {

		if (bindingResult.hasErrors()) {
			return CURSO_FOLDER + "atualizarCurso";
		}

		cursoModel.setIdCurso(id);
		cursoRep.save(cursoModel);
		redirectAttributes.addFlashAttribute("messages", "Curso alterado com sucesso");

		return "redirect:/curso";
	}

	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {

		cursoRep.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Curso excluido com sucesso!");

		return "redirect:/curso";
	}
}
