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
pub struct ExprSizeofType0 {
    pub _root: SharedType<ExprSizeofType0>,
    pub _parent: SharedType<ExprSizeofType0>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_sizeof_block: Cell<bool>,
    sizeof_block: RefCell<i32>,
}
impl KStruct for ExprSizeofType0 {
    type Root = ExprSizeofType0;
    type Parent = ExprSizeofType0;

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
impl ExprSizeofType0 {
    pub fn sizeof_block(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_sizeof_block.get() {
            return Ok(self.sizeof_block.borrow());
        }
        self.f_sizeof_block.set(true);
        *self.sizeof_block.borrow_mut() = (7) as i32;
        Ok(self.sizeof_block.borrow())
    }
}
impl ExprSizeofType0 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ExprSizeofType0_Block {
    pub _root: SharedType<ExprSizeofType0>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    a: RefCell<u8>,
    b: RefCell<u32>,
    c: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ExprSizeofType0_Block {
    type Root = ExprSizeofType0;
    type Parent = KStructUnit;

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
        *self_rc.a.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.c.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        Ok(())
    }
}
impl ExprSizeofType0_Block {
}
impl ExprSizeofType0_Block {
    pub fn a(&self) -> Ref<u8> {
        self.a.borrow()
    }
}
impl ExprSizeofType0_Block {
    pub fn b(&self) -> Ref<u32> {
        self.b.borrow()
    }
}
impl ExprSizeofType0_Block {
    pub fn c(&self) -> Ref<Vec<u8>> {
        self.c.borrow()
    }
}
impl ExprSizeofType0_Block {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
