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
use crate::my_custom_fx::*;

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertypeDynargCustom {
    pub _root: SharedType<ProcessRepeatUsertypeDynargCustom>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargCustom>,
    pub _self: SharedType<Self>,
    blocks: RefCell<Vec<OptRc<ProcessRepeatUsertypeDynargCustom_Block>>>,
    blocks_b: RefCell<OptRc<ProcessRepeatUsertypeDynargCustom_BlocksBWrapper>>,
    _io: RefCell<BytesReader>,
    blocks_raw: RefCell<Vec<Vec<u8>>>,
    blocks_raw_raw: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for ProcessRepeatUsertypeDynargCustom {
    type Root = ProcessRepeatUsertypeDynargCustom;
    type Parent = ProcessRepeatUsertypeDynargCustom;

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
        *self_rc.blocks_raw.borrow_mut() = Vec::new();
        *self_rc.blocks_raw_raw.borrow_mut() = Vec::new();
        *self_rc.blocks.borrow_mut() = Vec::new();
        let l_blocks = 2;
        for _i in 0..l_blocks {
            self_rc.blocks_raw_raw.borrow_mut().push(_io.read_bytes(5 as usize)?.into());
            let _process_blocks_raw_raw = MyCustomFx::new(((_io.pos() as i32) + (((13 as i32) * (_i as i32)) as i32)), ((modulo(_io.pos() as i64, 2 as i64) as i32) == (0 as i32)), &if ((_i as i32) == (1 as i32)) { vec![0x20u8, 0x30u8].to_vec() } else { vec![0x40u8].to_vec() });
            self_rc.blocks_raw.borrow_mut().push(_process_blocks_raw_raw.decode(&self_rc.blocks_raw_raw.borrow()[self_rc.blocks_raw_raw.borrow().len() - 1]).map_err(|msg| KError::BytesDecodingError { msg })?);
            let blocks_raw = self_rc.blocks_raw.borrow();
            let io_blocks_raw = BytesReader::from(blocks_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, ProcessRepeatUsertypeDynargCustom_Block>(&io_blocks_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.blocks.borrow_mut().push(t);
        }
        let t = Self::read_into::<_, ProcessRepeatUsertypeDynargCustom_BlocksBWrapper>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.blocks_b.borrow_mut() = t;
        Ok(())
    }
}
impl ProcessRepeatUsertypeDynargCustom {
}
impl ProcessRepeatUsertypeDynargCustom {
    pub fn blocks(&self) -> Ref<'_, Vec<OptRc<ProcessRepeatUsertypeDynargCustom_Block>>> {
        self.blocks.borrow()
    }
}
impl ProcessRepeatUsertypeDynargCustom {
    pub fn blocks_b(&self) -> Ref<'_, OptRc<ProcessRepeatUsertypeDynargCustom_BlocksBWrapper>> {
        self.blocks_b.borrow()
    }
}
impl ProcessRepeatUsertypeDynargCustom {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessRepeatUsertypeDynargCustom {
    pub fn blocks_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_raw.borrow()
    }
}
impl ProcessRepeatUsertypeDynargCustom {
    pub fn blocks_raw_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_raw_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertypeDynargCustom_Block {
    pub _root: SharedType<ProcessRepeatUsertypeDynargCustom>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargCustom>,
    pub _self: SharedType<Self>,
    a: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessRepeatUsertypeDynargCustom_Block {
    type Root = ProcessRepeatUsertypeDynargCustom;
    type Parent = ProcessRepeatUsertypeDynargCustom;

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
        *self_rc.a.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl ProcessRepeatUsertypeDynargCustom_Block {
}
impl ProcessRepeatUsertypeDynargCustom_Block {
    pub fn a(&self) -> Ref<'_, u32> {
        self.a.borrow()
    }
}
impl ProcessRepeatUsertypeDynargCustom_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertypeDynargCustom_BlocksBWrapper {
    pub _root: SharedType<ProcessRepeatUsertypeDynargCustom>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargCustom>,
    pub _self: SharedType<Self>,
    dummy: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_blocks_0_b: Cell<bool>,
    blocks_0_b: RefCell<u8>,
    f_blocks_1_b: Cell<bool>,
    blocks_1_b: RefCell<u8>,
}
impl KStruct for ProcessRepeatUsertypeDynargCustom_BlocksBWrapper {
    type Root = ProcessRepeatUsertypeDynargCustom;
    type Parent = ProcessRepeatUsertypeDynargCustom;

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
        *self_rc.dummy.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ProcessRepeatUsertypeDynargCustom_BlocksBWrapper {
    pub fn blocks_0_b(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_blocks_0_b.get() {
            return Ok(self.blocks_0_b.borrow());
        }
        self.f_blocks_0_b.set(true);
        let io = Clone::clone(&*_prc.as_ref().unwrap().blocks()[0 as usize]._io());
        let _pos = io.pos();
        io.seek(4 as usize)?;
        *self.blocks_0_b.borrow_mut() = io.read_u1()?.into();
        io.seek(_pos)?;
        Ok(self.blocks_0_b.borrow())
    }
    pub fn blocks_1_b(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_blocks_1_b.get() {
            return Ok(self.blocks_1_b.borrow());
        }
        self.f_blocks_1_b.set(true);
        let io = Clone::clone(&*_prc.as_ref().unwrap().blocks()[1 as usize]._io());
        let _pos = io.pos();
        io.seek(4 as usize)?;
        *self.blocks_1_b.borrow_mut() = io.read_u1()?.into();
        io.seek(_pos)?;
        Ok(self.blocks_1_b.borrow())
    }
}
impl ProcessRepeatUsertypeDynargCustom_BlocksBWrapper {
    pub fn dummy(&self) -> Ref<'_, u8> {
        self.dummy.borrow()
    }
}
impl ProcessRepeatUsertypeDynargCustom_BlocksBWrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
