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
pub struct BufferedStruct {
    pub _root: SharedType<BufferedStruct>,
    pub _parent: SharedType<BufferedStruct>,
    pub _self: SharedType<Self>,
    len1: RefCell<u32>,
    block1: RefCell<OptRc<BufferedStruct_Block>>,
    len2: RefCell<u32>,
    block2: RefCell<OptRc<BufferedStruct_Block>>,
    finisher: RefCell<u32>,
    _io: RefCell<BytesReader>,
    block1_raw: RefCell<Vec<u8>>,
    block2_raw: RefCell<Vec<u8>>,
}
impl KStruct for BufferedStruct {
    type Root = BufferedStruct;
    type Parent = BufferedStruct;

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
        *self_rc.len1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.block1_raw.borrow_mut() = _io.read_bytes(*self_rc.len1() as usize)?.into();
        let block1_raw = self_rc.block1_raw.borrow();
        let _t_block1_raw_io = BytesReader::from(block1_raw.clone());
        let t = Self::read_into::<BytesReader, BufferedStruct_Block>(&_t_block1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.block1.borrow_mut() = t;
        *self_rc.len2.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.block2_raw.borrow_mut() = _io.read_bytes(*self_rc.len2() as usize)?.into();
        let block2_raw = self_rc.block2_raw.borrow();
        let _t_block2_raw_io = BytesReader::from(block2_raw.clone());
        let t = Self::read_into::<BytesReader, BufferedStruct_Block>(&_t_block2_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.block2.borrow_mut() = t;
        *self_rc.finisher.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl BufferedStruct {
}
impl BufferedStruct {
    pub fn len1(&self) -> Ref<'_, u32> {
        self.len1.borrow()
    }
}
impl BufferedStruct {
    pub fn block1(&self) -> Ref<'_, OptRc<BufferedStruct_Block>> {
        self.block1.borrow()
    }
}
impl BufferedStruct {
    pub fn len2(&self) -> Ref<'_, u32> {
        self.len2.borrow()
    }
}
impl BufferedStruct {
    pub fn block2(&self) -> Ref<'_, OptRc<BufferedStruct_Block>> {
        self.block2.borrow()
    }
}
impl BufferedStruct {
    pub fn finisher(&self) -> Ref<'_, u32> {
        self.finisher.borrow()
    }
}
impl BufferedStruct {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl BufferedStruct {
    pub fn block1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.block1_raw.borrow()
    }
}
impl BufferedStruct {
    pub fn block2_raw(&self) -> Ref<'_, Vec<u8>> {
        self.block2_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BufferedStruct_Block {
    pub _root: SharedType<BufferedStruct>,
    pub _parent: SharedType<BufferedStruct>,
    pub _self: SharedType<Self>,
    number1: RefCell<u32>,
    number2: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BufferedStruct_Block {
    type Root = BufferedStruct;
    type Parent = BufferedStruct;

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
        *self_rc.number1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.number2.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl BufferedStruct_Block {
}
impl BufferedStruct_Block {
    pub fn number1(&self) -> Ref<'_, u32> {
        self.number1.borrow()
    }
}
impl BufferedStruct_Block {
    pub fn number2(&self) -> Ref<'_, u32> {
        self.number2.borrow()
    }
}
impl BufferedStruct_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
