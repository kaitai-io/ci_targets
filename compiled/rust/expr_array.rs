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
pub struct ExprArray {
    pub _root: SharedType<ExprArray>,
    pub _parent: SharedType<ExprArray>,
    pub _self: SharedType<Self>,
    aint: RefCell<Vec<u32>>,
    afloat: RefCell<Vec<f64>>,
    astr: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
    f_afloat_first: Cell<bool>,
    afloat_first: RefCell<f64>,
    f_afloat_last: Cell<bool>,
    afloat_last: RefCell<f64>,
    f_afloat_max: Cell<bool>,
    afloat_max: RefCell<f64>,
    f_afloat_min: Cell<bool>,
    afloat_min: RefCell<f64>,
    f_afloat_size: Cell<bool>,
    afloat_size: RefCell<i32>,
    f_aint_first: Cell<bool>,
    aint_first: RefCell<u32>,
    f_aint_last: Cell<bool>,
    aint_last: RefCell<u32>,
    f_aint_max: Cell<bool>,
    aint_max: RefCell<u32>,
    f_aint_min: Cell<bool>,
    aint_min: RefCell<u32>,
    f_aint_size: Cell<bool>,
    aint_size: RefCell<i32>,
    f_astr_first: Cell<bool>,
    astr_first: RefCell<String>,
    f_astr_last: Cell<bool>,
    astr_last: RefCell<String>,
    f_astr_max: Cell<bool>,
    astr_max: RefCell<String>,
    f_astr_min: Cell<bool>,
    astr_min: RefCell<String>,
    f_astr_size: Cell<bool>,
    astr_size: RefCell<i32>,
}
impl KStruct for ExprArray {
    type Root = ExprArray;
    type Parent = ExprArray;

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
        *self_rc.aint.borrow_mut() = Vec::new();
        let l_aint = 4;
        for _i in 0..l_aint {
            self_rc.aint.borrow_mut().push(_io.read_u4le()?.into());
        }
        *self_rc.afloat.borrow_mut() = Vec::new();
        let l_afloat = 3;
        for _i in 0..l_afloat {
            self_rc.afloat.borrow_mut().push(_io.read_f8le()?.into());
        }
        *self_rc.astr.borrow_mut() = Vec::new();
        let l_astr = 3;
        for _i in 0..l_astr {
            self_rc.astr.borrow_mut().push(bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?);
        }
        Ok(())
    }
}
impl ExprArray {
    pub fn afloat_first(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_afloat_first.get() {
            return Ok(self.afloat_first.borrow());
        }
        self.f_afloat_first.set(true);
        *self.afloat_first.borrow_mut() = (*self.afloat().first().ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.afloat_first.borrow())
    }
    pub fn afloat_last(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_afloat_last.get() {
            return Ok(self.afloat_last.borrow());
        }
        self.f_afloat_last.set(true);
        *self.afloat_last.borrow_mut() = (*self.afloat().last().ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.afloat_last.borrow())
    }
    pub fn afloat_max(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_afloat_max.get() {
            return Ok(self.afloat_max.borrow());
        }
        self.f_afloat_max.set(true);
        *self.afloat_max.borrow_mut() = (*self.afloat().iter().reduce(|a, b| if (a.max(*b)) == *b {b} else {a}).ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.afloat_max.borrow())
    }
    pub fn afloat_min(
        &self
    ) -> KResult<Ref<f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_afloat_min.get() {
            return Ok(self.afloat_min.borrow());
        }
        self.f_afloat_min.set(true);
        *self.afloat_min.borrow_mut() = (*self.afloat().iter().reduce(|a, b| if (a.min(*b)) == *b {b} else {a}).ok_or(KError::EmptyIterator)?) as f64;
        Ok(self.afloat_min.borrow())
    }
    pub fn afloat_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_afloat_size.get() {
            return Ok(self.afloat_size.borrow());
        }
        self.f_afloat_size.set(true);
        *self.afloat_size.borrow_mut() = (self.afloat().len()) as i32;
        Ok(self.afloat_size.borrow())
    }
    pub fn aint_first(
        &self
    ) -> KResult<Ref<u32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_aint_first.get() {
            return Ok(self.aint_first.borrow());
        }
        self.f_aint_first.set(true);
        *self.aint_first.borrow_mut() = (*self.aint().first().ok_or(KError::EmptyIterator)?) as u32;
        Ok(self.aint_first.borrow())
    }
    pub fn aint_last(
        &self
    ) -> KResult<Ref<u32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_aint_last.get() {
            return Ok(self.aint_last.borrow());
        }
        self.f_aint_last.set(true);
        *self.aint_last.borrow_mut() = (*self.aint().last().ok_or(KError::EmptyIterator)?) as u32;
        Ok(self.aint_last.borrow())
    }
    pub fn aint_max(
        &self
    ) -> KResult<Ref<u32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_aint_max.get() {
            return Ok(self.aint_max.borrow());
        }
        self.f_aint_max.set(true);
        *self.aint_max.borrow_mut() = (*self.aint().iter().max().ok_or(KError::EmptyIterator)?) as u32;
        Ok(self.aint_max.borrow())
    }
    pub fn aint_min(
        &self
    ) -> KResult<Ref<u32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_aint_min.get() {
            return Ok(self.aint_min.borrow());
        }
        self.f_aint_min.set(true);
        *self.aint_min.borrow_mut() = (*self.aint().iter().min().ok_or(KError::EmptyIterator)?) as u32;
        Ok(self.aint_min.borrow())
    }
    pub fn aint_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_aint_size.get() {
            return Ok(self.aint_size.borrow());
        }
        self.f_aint_size.set(true);
        *self.aint_size.borrow_mut() = (self.aint().len()) as i32;
        Ok(self.aint_size.borrow())
    }
    pub fn astr_first(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_astr_first.get() {
            return Ok(self.astr_first.borrow());
        }
        self.f_astr_first.set(true);
        *self.astr_first.borrow_mut() = self.astr().first().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.astr_first.borrow())
    }
    pub fn astr_last(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_astr_last.get() {
            return Ok(self.astr_last.borrow());
        }
        self.f_astr_last.set(true);
        *self.astr_last.borrow_mut() = self.astr().last().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.astr_last.borrow())
    }
    pub fn astr_max(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_astr_max.get() {
            return Ok(self.astr_max.borrow());
        }
        self.f_astr_max.set(true);
        *self.astr_max.borrow_mut() = self.astr().iter().max().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.astr_max.borrow())
    }
    pub fn astr_min(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_astr_min.get() {
            return Ok(self.astr_min.borrow());
        }
        self.f_astr_min.set(true);
        *self.astr_min.borrow_mut() = self.astr().iter().min().ok_or(KError::EmptyIterator)?.to_string();
        Ok(self.astr_min.borrow())
    }
    pub fn astr_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_astr_size.get() {
            return Ok(self.astr_size.borrow());
        }
        self.f_astr_size.set(true);
        *self.astr_size.borrow_mut() = (self.astr().len()) as i32;
        Ok(self.astr_size.borrow())
    }
}
impl ExprArray {
    pub fn aint(&self) -> Ref<Vec<u32>> {
        self.aint.borrow()
    }
}
impl ExprArray {
    pub fn afloat(&self) -> Ref<Vec<f64>> {
        self.afloat.borrow()
    }
}
impl ExprArray {
    pub fn astr(&self) -> Ref<Vec<String>> {
        self.astr.borrow()
    }
}
impl ExprArray {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
