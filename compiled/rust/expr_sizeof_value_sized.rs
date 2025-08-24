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
pub struct ExprSizeofValueSized {
    pub _root: SharedType<ExprSizeofValueSized>,
    pub _parent: SharedType<ExprSizeofValueSized>,
    pub _self: SharedType<Self>,
    block1: RefCell<OptRc<ExprSizeofValueSized_Block>>,
    more: RefCell<u16>,
    _io: RefCell<BytesReader>,
    block1_raw: RefCell<Vec<u8>>,
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
impl KStruct for ExprSizeofValueSized {
    type Root = ExprSizeofValueSized;
    type Parent = ExprSizeofValueSized;

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
        *self_rc.block1_raw.borrow_mut() = _io.read_bytes(12 as usize)?.into();
        let block1_raw = self_rc.block1_raw.borrow();
        let _t_block1_raw_io = BytesReader::from(block1_raw.clone());
        let t = Self::read_into::<BytesReader, ExprSizeofValueSized_Block>(&_t_block1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.block1.borrow_mut() = t;
        *self_rc.more.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl ExprSizeofValueSized {
    pub fn self_sizeof(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_self_sizeof.get() {
            return Ok(self.self_sizeof.borrow());
        }
        self.f_self_sizeof.set(true);
        *self.self_sizeof.borrow_mut() = (14) as i32;
        Ok(self.self_sizeof.borrow())
    }
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
        *self.sizeof_block.borrow_mut() = (12) as i32;
        Ok(self.sizeof_block.borrow())
    }
    pub fn sizeof_block_a(
        &self
    ) -> KResult<Ref<'_, i32>> {
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
    ) -> KResult<Ref<'_, i32>> {
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
    ) -> KResult<Ref<'_, i32>> {
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
impl ExprSizeofValueSized {
    pub fn block1(&self) -> Ref<'_, OptRc<ExprSizeofValueSized_Block>> {
        self.block1.borrow()
    }
}
impl ExprSizeofValueSized {
    pub fn more(&self) -> Ref<'_, u16> {
        self.more.borrow()
    }
}
impl ExprSizeofValueSized {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ExprSizeofValueSized {
    pub fn block1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.block1_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ExprSizeofValueSized_Block {
    pub _root: SharedType<ExprSizeofValueSized>,
    pub _parent: SharedType<ExprSizeofValueSized>,
    pub _self: SharedType<Self>,
    a: RefCell<u8>,
    b: RefCell<u32>,
    c: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ExprSizeofValueSized_Block {
    type Root = ExprSizeofValueSized;
    type Parent = ExprSizeofValueSized;

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
impl ExprSizeofValueSized_Block {
}
impl ExprSizeofValueSized_Block {
    pub fn a(&self) -> Ref<'_, u8> {
        self.a.borrow()
    }
}
impl ExprSizeofValueSized_Block {
    pub fn b(&self) -> Ref<'_, u32> {
        self.b.borrow()
    }
}
impl ExprSizeofValueSized_Block {
    pub fn c(&self) -> Ref<'_, Vec<u8>> {
        self.c.borrow()
    }
}
impl ExprSizeofValueSized_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
