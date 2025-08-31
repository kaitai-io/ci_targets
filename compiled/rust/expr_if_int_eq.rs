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
pub struct ExprIfIntEq {
    pub _root: SharedType<ExprIfIntEq>,
    pub _parent: SharedType<ExprIfIntEq>,
    pub _self: SharedType<Self>,
    skip: RefCell<Vec<u8>>,
    seq: RefCell<i16>,
    seq_if: RefCell<i16>,
    _io: RefCell<BytesReader>,
    f_calc: Cell<bool>,
    calc: RefCell<i32>,
    f_calc_eq_calc_if: Cell<bool>,
    calc_eq_calc_if: RefCell<bool>,
    f_calc_eq_lit: Cell<bool>,
    calc_eq_lit: RefCell<bool>,
    f_calc_eq_seq_if: Cell<bool>,
    calc_eq_seq_if: RefCell<bool>,
    f_calc_if: Cell<bool>,
    calc_if: RefCell<i32>,
    f_calc_if_eq_lit: Cell<bool>,
    calc_if_eq_lit: RefCell<bool>,
    f_calc_if_eq_seq_if: Cell<bool>,
    calc_if_eq_seq_if: RefCell<bool>,
    f_seq_eq_calc: Cell<bool>,
    seq_eq_calc: RefCell<bool>,
    f_seq_eq_calc_if: Cell<bool>,
    seq_eq_calc_if: RefCell<bool>,
    f_seq_eq_lit: Cell<bool>,
    seq_eq_lit: RefCell<bool>,
    f_seq_eq_seq_if: Cell<bool>,
    seq_eq_seq_if: RefCell<bool>,
    f_seq_if_eq_lit: Cell<bool>,
    seq_if_eq_lit: RefCell<bool>,
}
impl KStruct for ExprIfIntEq {
    type Root = ExprIfIntEq;
    type Parent = ExprIfIntEq;

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
        *self_rc.skip.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        *self_rc.seq.borrow_mut() = _io.read_s2le()?.into();
        if true {
            *self_rc.seq_if.borrow_mut() = _io.read_s2le()?.into();
        }
        Ok(())
    }
}
impl ExprIfIntEq {
    pub fn calc(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc.get() {
            return Ok(self.calc.borrow());
        }
        self.f_calc.set(true);
        *self.calc.borrow_mut() = (16705) as i32;
        Ok(self.calc.borrow())
    }
    pub fn calc_eq_calc_if(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_eq_calc_if.get() {
            return Ok(self.calc_eq_calc_if.borrow());
        }
        self.f_calc_eq_calc_if.set(true);
        *self.calc_eq_calc_if.borrow_mut() = (*self.calc()? == *self.calc_if()?) as bool;
        Ok(self.calc_eq_calc_if.borrow())
    }
    pub fn calc_eq_lit(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_eq_lit.get() {
            return Ok(self.calc_eq_lit.borrow());
        }
        self.f_calc_eq_lit.set(true);
        *self.calc_eq_lit.borrow_mut() = (*self.calc()? == 16705) as bool;
        Ok(self.calc_eq_lit.borrow())
    }
    pub fn calc_eq_seq_if(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_eq_seq_if.get() {
            return Ok(self.calc_eq_seq_if.borrow());
        }
        self.f_calc_eq_seq_if.set(true);
        *self.calc_eq_seq_if.borrow_mut() = (((*self.calc()? as i32) == (*self.seq_if() as i32))) as bool;
        Ok(self.calc_eq_seq_if.borrow())
    }
    pub fn calc_if(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_if.get() {
            return Ok(self.calc_if.borrow());
        }
        self.f_calc_if.set(true);
        if true {
            *self.calc_if.borrow_mut() = (16705) as i32;
        }
        Ok(self.calc_if.borrow())
    }
    pub fn calc_if_eq_lit(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_if_eq_lit.get() {
            return Ok(self.calc_if_eq_lit.borrow());
        }
        self.f_calc_if_eq_lit.set(true);
        *self.calc_if_eq_lit.borrow_mut() = (*self.calc_if()? == 16705) as bool;
        Ok(self.calc_if_eq_lit.borrow())
    }
    pub fn calc_if_eq_seq_if(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_if_eq_seq_if.get() {
            return Ok(self.calc_if_eq_seq_if.borrow());
        }
        self.f_calc_if_eq_seq_if.set(true);
        *self.calc_if_eq_seq_if.borrow_mut() = (((*self.calc_if()? as i32) == (*self.seq_if() as i32))) as bool;
        Ok(self.calc_if_eq_seq_if.borrow())
    }
    pub fn seq_eq_calc(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_seq_eq_calc.get() {
            return Ok(self.seq_eq_calc.borrow());
        }
        self.f_seq_eq_calc.set(true);
        *self.seq_eq_calc.borrow_mut() = (((*self.seq() as i32) == (*self.calc()? as i32))) as bool;
        Ok(self.seq_eq_calc.borrow())
    }
    pub fn seq_eq_calc_if(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_seq_eq_calc_if.get() {
            return Ok(self.seq_eq_calc_if.borrow());
        }
        self.f_seq_eq_calc_if.set(true);
        *self.seq_eq_calc_if.borrow_mut() = (((*self.seq() as i32) == (*self.calc_if()? as i32))) as bool;
        Ok(self.seq_eq_calc_if.borrow())
    }
    pub fn seq_eq_lit(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_seq_eq_lit.get() {
            return Ok(self.seq_eq_lit.borrow());
        }
        self.f_seq_eq_lit.set(true);
        *self.seq_eq_lit.borrow_mut() = (((*self.seq() as i32) == (16705 as i32))) as bool;
        Ok(self.seq_eq_lit.borrow())
    }
    pub fn seq_eq_seq_if(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_seq_eq_seq_if.get() {
            return Ok(self.seq_eq_seq_if.borrow());
        }
        self.f_seq_eq_seq_if.set(true);
        *self.seq_eq_seq_if.borrow_mut() = (*self.seq() == *self.seq_if()) as bool;
        Ok(self.seq_eq_seq_if.borrow())
    }
    pub fn seq_if_eq_lit(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_seq_if_eq_lit.get() {
            return Ok(self.seq_if_eq_lit.borrow());
        }
        self.f_seq_if_eq_lit.set(true);
        *self.seq_if_eq_lit.borrow_mut() = (((*self.seq_if() as i32) == (16705 as i32))) as bool;
        Ok(self.seq_if_eq_lit.borrow())
    }
}
impl ExprIfIntEq {
    pub fn skip(&self) -> Ref<'_, Vec<u8>> {
        self.skip.borrow()
    }
}
impl ExprIfIntEq {
    pub fn seq(&self) -> Ref<'_, i16> {
        self.seq.borrow()
    }
}
impl ExprIfIntEq {
    pub fn seq_if(&self) -> Ref<'_, i16> {
        self.seq_if.borrow()
    }
}
impl ExprIfIntEq {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
