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
pub struct ExprBytesOps {
    pub _root: SharedType<ExprBytesOps>,
    pub _parent: SharedType<ExprBytesOps>,
    pub _self: SharedType<Self>,
    one: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_one_first: Cell<bool>,
    one_first: RefCell<u8>,
    f_one_last: Cell<bool>,
    one_last: RefCell<u8>,
    f_one_max: Cell<bool>,
    one_max: RefCell<u8>,
    f_one_mid: Cell<bool>,
    one_mid: RefCell<u8>,
    f_one_min: Cell<bool>,
    one_min: RefCell<u8>,
    f_one_size: Cell<bool>,
    one_size: RefCell<i32>,
    f_two: Cell<bool>,
    two: RefCell<Vec<u8>>,
    f_two_first: Cell<bool>,
    two_first: RefCell<u8>,
    f_two_last: Cell<bool>,
    two_last: RefCell<u8>,
    f_two_max: Cell<bool>,
    two_max: RefCell<u8>,
    f_two_mid: Cell<bool>,
    two_mid: RefCell<u8>,
    f_two_min: Cell<bool>,
    two_min: RefCell<u8>,
    f_two_size: Cell<bool>,
    two_size: RefCell<i32>,
}
impl KStruct for ExprBytesOps {
    type Root = ExprBytesOps;
    type Parent = ExprBytesOps;

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
        *self_rc.one.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        Ok(())
    }
}
impl ExprBytesOps {
    pub fn one_first(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_first.get() {
            return Ok(self.one_first.borrow());
        }
        self.f_one_first.set(true);
        *self.one_first.borrow_mut() = (*self.one().first().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.one_first.borrow())
    }
    pub fn one_last(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_last.get() {
            return Ok(self.one_last.borrow());
        }
        self.f_one_last.set(true);
        *self.one_last.borrow_mut() = (*self.one().last().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.one_last.borrow())
    }
    pub fn one_max(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_max.get() {
            return Ok(self.one_max.borrow());
        }
        self.f_one_max.set(true);
        *self.one_max.borrow_mut() = (*self.one().iter().max().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.one_max.borrow())
    }
    pub fn one_mid(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_mid.get() {
            return Ok(self.one_mid.borrow());
        }
        self.f_one_mid.set(true);
        *self.one_mid.borrow_mut() = (self.one()[1 as usize]) as u8;
        Ok(self.one_mid.borrow())
    }
    pub fn one_min(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_min.get() {
            return Ok(self.one_min.borrow());
        }
        self.f_one_min.set(true);
        *self.one_min.borrow_mut() = (*self.one().iter().min().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.one_min.borrow())
    }
    pub fn one_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_size.get() {
            return Ok(self.one_size.borrow());
        }
        self.f_one_size.set(true);
        *self.one_size.borrow_mut() = (self.one().len()) as i32;
        Ok(self.one_size.borrow())
    }
    pub fn two(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two.get() {
            return Ok(self.two.borrow());
        }
        self.f_two.set(true);
        *self.two.borrow_mut() = vec![0x41u8, 0xffu8, 0x4bu8].to_vec();
        Ok(self.two.borrow())
    }
    pub fn two_first(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_first.get() {
            return Ok(self.two_first.borrow());
        }
        self.f_two_first.set(true);
        *self.two_first.borrow_mut() = (*self.two()?.first().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.two_first.borrow())
    }
    pub fn two_last(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_last.get() {
            return Ok(self.two_last.borrow());
        }
        self.f_two_last.set(true);
        *self.two_last.borrow_mut() = (*self.two()?.last().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.two_last.borrow())
    }
    pub fn two_max(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_max.get() {
            return Ok(self.two_max.borrow());
        }
        self.f_two_max.set(true);
        *self.two_max.borrow_mut() = (*self.two()?.iter().max().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.two_max.borrow())
    }
    pub fn two_mid(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_mid.get() {
            return Ok(self.two_mid.borrow());
        }
        self.f_two_mid.set(true);
        *self.two_mid.borrow_mut() = (self.two()?[1 as usize]) as u8;
        Ok(self.two_mid.borrow())
    }
    pub fn two_min(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_min.get() {
            return Ok(self.two_min.borrow());
        }
        self.f_two_min.set(true);
        *self.two_min.borrow_mut() = (*self.two()?.iter().min().ok_or(KError::EmptyIterator)?) as u8;
        Ok(self.two_min.borrow())
    }
    pub fn two_size(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_size.get() {
            return Ok(self.two_size.borrow());
        }
        self.f_two_size.set(true);
        *self.two_size.borrow_mut() = (self.two()?.len()) as i32;
        Ok(self.two_size.borrow())
    }
}
impl ExprBytesOps {
    pub fn one(&self) -> Ref<Vec<u8>> {
        self.one.borrow()
    }
}
impl ExprBytesOps {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
