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
pub struct ExprSizeofType1 {
    pub _root: SharedType<ExprSizeofType1>,
    pub _parent: SharedType<ExprSizeofType1>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_sizeof_block: Cell<bool>,
    sizeof_block: RefCell<i32>,
    f_sizeof_subblock: Cell<bool>,
    sizeof_subblock: RefCell<i32>,
}
impl KStruct for ExprSizeofType1 {
    type Root = ExprSizeofType1;
    type Parent = ExprSizeofType1;

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
impl ExprSizeofType1 {
    pub fn sizeof_block(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_sizeof_block.get() {
            return Ok(self.sizeof_block.borrow());
        }
        self.f_sizeof_block.set(true);
        *self.sizeof_block.borrow_mut() = (11) as i32;
        Ok(self.sizeof_block.borrow())
    }
    pub fn sizeof_subblock(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_sizeof_subblock.get() {
            return Ok(self.sizeof_subblock.borrow());
        }
        self.f_sizeof_subblock.set(true);
        *self.sizeof_subblock.borrow_mut() = (4) as i32;
        Ok(self.sizeof_subblock.borrow())
    }
}
impl ExprSizeofType1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ExprSizeofType1_Block {
    pub _root: SharedType<ExprSizeofType1>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    a: RefCell<u8>,
    b: RefCell<u32>,
    c: RefCell<Vec<u8>>,
    d: RefCell<OptRc<ExprSizeofType1_Block_Subblock>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ExprSizeofType1_Block {
    type Root = ExprSizeofType1;
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
        let t = Self::read_into::<_, ExprSizeofType1_Block_Subblock>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.d.borrow_mut() = t;
        Ok(())
    }
}
impl ExprSizeofType1_Block {
}
impl ExprSizeofType1_Block {
    pub fn a(&self) -> Ref<'_, u8> {
        self.a.borrow()
    }
}
impl ExprSizeofType1_Block {
    pub fn b(&self) -> Ref<'_, u32> {
        self.b.borrow()
    }
}
impl ExprSizeofType1_Block {
    pub fn c(&self) -> Ref<'_, Vec<u8>> {
        self.c.borrow()
    }
}
impl ExprSizeofType1_Block {
    pub fn d(&self) -> Ref<'_, OptRc<ExprSizeofType1_Block_Subblock>> {
        self.d.borrow()
    }
}
impl ExprSizeofType1_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ExprSizeofType1_Block_Subblock {
    pub _root: SharedType<ExprSizeofType1>,
    pub _parent: SharedType<ExprSizeofType1_Block>,
    pub _self: SharedType<Self>,
    a: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ExprSizeofType1_Block_Subblock {
    type Root = ExprSizeofType1;
    type Parent = ExprSizeofType1_Block;

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
        *self_rc.a.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        Ok(())
    }
}
impl ExprSizeofType1_Block_Subblock {
}
impl ExprSizeofType1_Block_Subblock {
    pub fn a(&self) -> Ref<'_, Vec<u8>> {
        self.a.borrow()
    }
}
impl ExprSizeofType1_Block_Subblock {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
