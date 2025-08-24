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
pub struct ExprIfIntOps {
    pub _root: SharedType<ExprIfIntOps>,
    pub _parent: SharedType<ExprIfIntOps>,
    pub _self: SharedType<Self>,
    skip: RefCell<Vec<u8>>,
    it: RefCell<i16>,
    boxed: RefCell<i16>,
    _io: RefCell<BytesReader>,
    f_is_eq_boxed: Cell<bool>,
    is_eq_boxed: RefCell<bool>,
    f_is_eq_prim: Cell<bool>,
    is_eq_prim: RefCell<bool>,
}
impl KStruct for ExprIfIntOps {
    type Root = ExprIfIntOps;
    type Parent = ExprIfIntOps;

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
        if true {
            *self_rc.it.borrow_mut() = _io.read_s2le()?.into();
        }
        if true {
            *self_rc.boxed.borrow_mut() = _io.read_s2le()?.into();
        }
        Ok(())
    }
}
impl ExprIfIntOps {
    pub fn is_eq_boxed(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_eq_boxed.get() {
            return Ok(self.is_eq_boxed.borrow());
        }
        self.f_is_eq_boxed.set(true);
        *self.is_eq_boxed.borrow_mut() = (*self.it() == *self.boxed()) as bool;
        Ok(self.is_eq_boxed.borrow())
    }
    pub fn is_eq_prim(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_eq_prim.get() {
            return Ok(self.is_eq_prim.borrow());
        }
        self.f_is_eq_prim.set(true);
        *self.is_eq_prim.borrow_mut() = (((*self.it() as i32) == (16705 as i32))) as bool;
        Ok(self.is_eq_prim.borrow())
    }
}
impl ExprIfIntOps {
    pub fn skip(&self) -> Ref<'_, Vec<u8>> {
        self.skip.borrow()
    }
}
impl ExprIfIntOps {
    pub fn it(&self) -> Ref<'_, i16> {
        self.it.borrow()
    }
}
impl ExprIfIntOps {
    pub fn boxed(&self) -> Ref<'_, i16> {
        self.boxed.borrow()
    }
}
impl ExprIfIntOps {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
