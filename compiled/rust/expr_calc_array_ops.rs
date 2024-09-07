// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct ExprCalcArrayOps {
    pub _root: SharedType<ExprCalcArrayOps>,
    pub _parent: SharedType<ExprCalcArrayOps>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_double_array: Cell<bool>,
    double_array: RefCell<Vec<f64>>,
    f_double_array_first: Cell<bool>,
    double_array_first: RefCell<f64>,
    f_double_array_last: Cell<bool>,
    double_array_last: RefCell<f64>,
    f_double_array_max: Cell<bool>,
    double_array_max: RefCell<f64>,
    f_double_array_mid: Cell<bool>,
    double_array_mid: RefCell<f64>,
    f_double_array_min: Cell<bool>,
    double_array_min: RefCell<f64>,
    f_double_array_size: Cell<bool>,
    double_array_size: RefCell<i32>,
    f_int_array: Cell<bool>,
    int_array: RefCell<Vec<i32>>,
    f_int_array_first: Cell<bool>,
    int_array_first: RefCell<i32>,
    f_int_array_last: Cell<bool>,
    int_array_last: RefCell<i32>,
    f_int_array_max: Cell<bool>,
    int_array_max: RefCell<i32>,
    f_int_array_mid: Cell<bool>,
    int_array_mid: RefCell<i32>,
    f_int_array_min: Cell<bool>,
    int_array_min: RefCell<i32>,
    f_int_array_size: Cell<bool>,
    int_array_size: RefCell<i32>,
    f_str_array: Cell<bool>,
    str_array: RefCell<Vec<String>>,
    f_str_array_first: Cell<bool>,
    str_array_first: RefCell<String>,
    f_str_array_last: Cell<bool>,
    str_array_last: RefCell<String>,
    f_str_array_max: Cell<bool>,
    str_array_max: RefCell<String>,
    f_str_array_mid: Cell<bool>,
    str_array_mid: RefCell<String>,
    f_str_array_min: Cell<bool>,
    str_array_min: RefCell<String>,
    f_str_array_size: Cell<bool>,
    str_array_size: RefCell<i32>,
}
impl KStruct for ExprCalcArrayOps {
    type Root = ExprCalcArrayOps;
    type Parent = ExprCalcArrayOps;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl ExprCalcArrayOps {
    pub fn double_array(
        &self
    ) -> KResult<Ref<Vec<f64>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_array.get() {
            return Ok(self.double_array.borrow());
        }
        self.f_double_array.set(true);
        *self.double_array.borrow_mut() = vec![10.0, 25.0, 50.0, 100.0, 3.14159].to_vec();
        Ok(self.double_array.borrow())
    }
    pub fn double_array_first(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_array_first.get() {
            return Ok(self.double_array_first.borrow());
        }
        self.f_double_array_first.set(true);
        *self.double_array_first.borrow_mut() = (*self.double_array()?.first().ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.double_array_first.borrow())
    }
    pub fn double_array_last(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_array_last.get() {
            return Ok(self.double_array_last.borrow());
        }
        self.f_double_array_last.set(true);
        *self.double_array_last.borrow_mut() = (*self.double_array()?.last().ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.double_array_last.borrow())
    }
    pub fn double_array_max(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_array_max.get() {
            return Ok(self.double_array_max.borrow());
        }
        self.f_double_array_max.set(true);
        *self.double_array_max.borrow_mut() = (*self.double_array()?.iter().reduce(|a, b| if (a.max(*b)) == *b {b} else {a}).ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.double_array_max.borrow())
    }
    pub fn double_array_mid(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_array_mid.get() {
            return Ok(self.double_array_mid.borrow());
        }
        self.f_double_array_mid.set(true);
        *self.double_array_mid.borrow_mut() = (self.double_array()?[1 as usize]) as f64;
        Ok(self.double_array_mid.borrow())
    }
    pub fn double_array_min(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_array_min.get() {
            return Ok(self.double_array_min.borrow());
        }
        self.f_double_array_min.set(true);
        *self.double_array_min.borrow_mut() = (*self.double_array()?.iter().reduce(|a, b| if (a.min(*b)) == *b {b} else {a}).ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.double_array_min.borrow())
    }
    pub fn double_array_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_array_size.get() {
            return Ok(self.double_array_size.borrow());
        }
        self.f_double_array_size.set(true);
        *self.double_array_size.borrow_mut() = (self.double_array()?.len()) as i32;
        Ok(self.double_array_size.borrow())
    }
    pub fn int_array(
        &self
    ) -> KResult<Ref<Vec<i32>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_int_array.get() {
            return Ok(self.int_array.borrow());
        }
        self.f_int_array.set(true);
        *self.int_array.borrow_mut() = vec![10, 25, 50, 100, 200, 500, 1000].to_vec();
        Ok(self.int_array.borrow())
    }
    pub fn int_array_first(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_int_array_first.get() {
            return Ok(self.int_array_first.borrow());
        }
        self.f_int_array_first.set(true);
        *self.int_array_first.borrow_mut() = (*self.int_array()?.first().ok_or(KError::EmptyIterator)?) as i32;
        Ok(self.int_array_first.borrow())
    }
    pub fn int_array_last(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_int_array_last.get() {
            return Ok(self.int_array_last.borrow());
        }
        self.f_int_array_last.set(true);
        *self.int_array_last.borrow_mut() = (*self.int_array()?.last().ok_or(KError::EmptyIterator)?) as i32;
        Ok(self.int_array_last.borrow())
    }
    pub fn int_array_max(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_int_array_max.get() {
            return Ok(self.int_array_max.borrow());
        }
        self.f_int_array_max.set(true);
        *self.int_array_max.borrow_mut() = (*self.int_array()?.iter().max().ok_or(KError::EmptyIterator)?) as i32;
        Ok(self.int_array_max.borrow())
    }
    pub fn int_array_mid(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_int_array_mid.get() {
            return Ok(self.int_array_mid.borrow());
        }
        self.f_int_array_mid.set(true);
        *self.int_array_mid.borrow_mut() = (self.int_array()?[1 as usize]) as i32;
        Ok(self.int_array_mid.borrow())
    }
    pub fn int_array_min(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_int_array_min.get() {
            return Ok(self.int_array_min.borrow());
        }
        self.f_int_array_min.set(true);
        *self.int_array_min.borrow_mut() = (*self.int_array()?.iter().min().ok_or(KError::EmptyIterator)?) as i32;
        Ok(self.int_array_min.borrow())
    }
    pub fn int_array_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_int_array_size.get() {
            return Ok(self.int_array_size.borrow());
        }
        self.f_int_array_size.set(true);
        *self.int_array_size.borrow_mut() = (self.int_array()?.len()) as i32;
        Ok(self.int_array_size.borrow())
    }
    pub fn str_array(
        &self
    ) -> KResult<Ref<Vec<String>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array.get() {
            return Ok(self.str_array.borrow());
        }
        self.f_str_array.set(true);
        *self.str_array.borrow_mut() = vec!["un".to_string(), "deux".to_string(), "trois".to_string(), "quatre".to_string()].to_vec();
        Ok(self.str_array.borrow())
    }
    pub fn str_array_first(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array_first.get() {
            return Ok(self.str_array_first.borrow());
        }
        self.f_str_array_first.set(true);
        *self.str_array_first.borrow_mut() = self.str_array()?.first().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.str_array_first.borrow())
    }
    pub fn str_array_last(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array_last.get() {
            return Ok(self.str_array_last.borrow());
        }
        self.f_str_array_last.set(true);
        *self.str_array_last.borrow_mut() = self.str_array()?.last().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.str_array_last.borrow())
    }
    pub fn str_array_max(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array_max.get() {
            return Ok(self.str_array_max.borrow());
        }
        self.f_str_array_max.set(true);
        *self.str_array_max.borrow_mut() = self.str_array()?.iter().max().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.str_array_max.borrow())
    }
    pub fn str_array_mid(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array_mid.get() {
            return Ok(self.str_array_mid.borrow());
        }
        self.f_str_array_mid.set(true);
        *self.str_array_mid.borrow_mut() = self.str_array()?[1 as usize].to_string();
        Ok(self.str_array_mid.borrow())
    }
    pub fn str_array_min(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array_min.get() {
            return Ok(self.str_array_min.borrow());
        }
        self.f_str_array_min.set(true);
        *self.str_array_min.borrow_mut() = self.str_array()?.iter().min().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.str_array_min.borrow())
    }
    pub fn str_array_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array_size.get() {
            return Ok(self.str_array_size.borrow());
        }
        self.f_str_array_size.set(true);
        *self.str_array_size.borrow_mut() = (self.str_array()?.len()) as i32;
        Ok(self.str_array_size.borrow())
    }
}
impl ExprCalcArrayOps {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
