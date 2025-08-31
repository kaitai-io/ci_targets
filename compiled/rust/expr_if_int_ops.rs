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
    key: RefCell<u64>,
    skip: RefCell<Vec<u8>>,
    bytes: RefCell<Vec<u8>>,
    items: RefCell<Vec<i8>>,
    _io: RefCell<BytesReader>,
    bytes_raw: RefCell<Vec<u8>>,
    f_bytes_sub_key: Cell<bool>,
    bytes_sub_key: RefCell<u8>,
    f_items_sub_key: Cell<bool>,
    items_sub_key: RefCell<i8>,
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
        if true {
            *self_rc.key.borrow_mut() = _io.read_u8le()?.into();
        }
        *self_rc.skip.borrow_mut() = _io.read_bytes(8 as usize)?.into();
        *self_rc.bytes_raw.borrow_mut() = _io.read_bytes(8 as usize)?.into();
        *self_rc.bytes.borrow_mut() = process_xor_one(&self_rc.bytes_raw.borrow(), *self_rc.key());
        *self_rc.items.borrow_mut() = Vec::new();
        let l_items = 4;
        for _i in 0..l_items {
            self_rc.items.borrow_mut().push(_io.read_s1()?.into());
        }
        Ok(())
    }
}
impl ExprIfIntOps {
    pub fn bytes_sub_key(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_bytes_sub_key.get() {
            return Ok(self.bytes_sub_key.borrow());
        }
        self.f_bytes_sub_key.set(true);
        *self.bytes_sub_key.borrow_mut() = (self.bytes()[*self.key() as usize]) as u8;
        Ok(self.bytes_sub_key.borrow())
    }
    pub fn items_sub_key(
        &self
    ) -> KResult<Ref<'_, i8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_items_sub_key.get() {
            return Ok(self.items_sub_key.borrow());
        }
        self.f_items_sub_key.set(true);
        *self.items_sub_key.borrow_mut() = (self.items()[*self.key() as usize]) as i8;
        Ok(self.items_sub_key.borrow())
    }
}
impl ExprIfIntOps {
    pub fn key(&self) -> Ref<'_, u64> {
        self.key.borrow()
    }
}
impl ExprIfIntOps {
    pub fn skip(&self) -> Ref<'_, Vec<u8>> {
        self.skip.borrow()
    }
}
impl ExprIfIntOps {
    pub fn bytes(&self) -> Ref<'_, Vec<u8>> {
        self.bytes.borrow()
    }
}
impl ExprIfIntOps {
    pub fn items(&self) -> Ref<'_, Vec<i8>> {
        self.items.borrow()
    }
}
impl ExprIfIntOps {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ExprIfIntOps {
    pub fn bytes_raw(&self) -> Ref<'_, Vec<u8>> {
        self.bytes_raw.borrow()
    }
}
