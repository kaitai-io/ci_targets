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
pub struct ExprSizeofValue0 {
    pub _root: SharedType<ExprSizeofValue0>,
    pub _parent: SharedType<ExprSizeofValue0>,
    pub _self: SharedType<Self>,
    block1: RefCell<OptRc<ExprSizeofValue0_Block>>,
    more: RefCell<u16>,
    _io: RefCell<BytesReader>,
    f_self_sizeof: Cell<bool>,
    self_sizeof: RefCell<i32>,
    f_sizeof_block: Cell<bool>,
    sizeof_block: RefCell<i32>,
    f_sizeof_block_a: Cell<bool>,
    sizeof_block_a: RefCell<i32>,
    f_sizeof_block_b: Cell<bool>,
    sizeof_block_b: RefCell<i32>,
    f_sizeof_block_c: Cell<bool>,
    sizeof_block_c: RefCell<i32>,
}
impl KStruct for ExprSizeofValue0 {
    type Root = ExprSizeofValue0;
    type Parent = ExprSizeofValue0;

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
        let t = Self::read_into::<_, ExprSizeofValue0_Block>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.block1.borrow_mut() = t;
        *self_rc.more.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl ExprSizeofValue0 {
    pub fn self_sizeof(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_self_sizeof.get() {
            return Ok(self.self_sizeof.borrow());
        }
        self.f_self_sizeof.set(true);
        *self.self_sizeof.borrow_mut() = (9) as i32;
        Ok(self.self_sizeof.borrow())
    }
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
    pub fn sizeof_block_a(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_sizeof_block_a.get() {
            return Ok(self.sizeof_block_a.borrow());
        }
        self.f_sizeof_block_a.set(true);
        *self.sizeof_block_a.borrow_mut() = (1) as i32;
        Ok(self.sizeof_block_a.borrow())
    }
    pub fn sizeof_block_b(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_sizeof_block_b.get() {
            return Ok(self.sizeof_block_b.borrow());
        }
        self.f_sizeof_block_b.set(true);
        *self.sizeof_block_b.borrow_mut() = (4) as i32;
        Ok(self.sizeof_block_b.borrow())
    }
    pub fn sizeof_block_c(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_sizeof_block_c.get() {
            return Ok(self.sizeof_block_c.borrow());
        }
        self.f_sizeof_block_c.set(true);
        *self.sizeof_block_c.borrow_mut() = (2) as i32;
        Ok(self.sizeof_block_c.borrow())
    }
}
impl ExprSizeofValue0 {
    pub fn block1(&self) -> Ref<OptRc<ExprSizeofValue0_Block>> {
        self.block1.borrow()
    }
}
impl ExprSizeofValue0 {
    pub fn more(&self) -> Ref<u16> {
        self.more.borrow()
    }
}
impl ExprSizeofValue0 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ExprSizeofValue0_Block {
    pub _root: SharedType<ExprSizeofValue0>,
    pub _parent: SharedType<ExprSizeofValue0>,
    pub _self: SharedType<Self>,
    a: RefCell<u8>,
    b: RefCell<u32>,
    c: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ExprSizeofValue0_Block {
    type Root = ExprSizeofValue0;
    type Parent = ExprSizeofValue0;

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
impl ExprSizeofValue0_Block {
}
impl ExprSizeofValue0_Block {
    pub fn a(&self) -> Ref<u8> {
        self.a.borrow()
    }
}
impl ExprSizeofValue0_Block {
    pub fn b(&self) -> Ref<u32> {
        self.b.borrow()
    }
}
impl ExprSizeofValue0_Block {
    pub fn c(&self) -> Ref<Vec<u8>> {
        self.c.borrow()
    }
}
impl ExprSizeofValue0_Block {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
