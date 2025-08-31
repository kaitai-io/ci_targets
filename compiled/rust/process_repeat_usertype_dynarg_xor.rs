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
pub struct ProcessRepeatUsertypeDynargXor {
    pub _root: SharedType<ProcessRepeatUsertypeDynargXor>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargXor>,
    pub _self: SharedType<Self>,
    blocks: RefCell<Vec<OptRc<ProcessRepeatUsertypeDynargXor_Block>>>,
    blocks_b: RefCell<OptRc<ProcessRepeatUsertypeDynargXor_BlocksBWrapper>>,
    _io: RefCell<BytesReader>,
    blocks_raw: RefCell<Vec<Vec<u8>>>,
    blocks_raw_raw: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for ProcessRepeatUsertypeDynargXor {
    type Root = ProcessRepeatUsertypeDynargXor;
    type Parent = ProcessRepeatUsertypeDynargXor;

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
            self_rc.blocks_raw.borrow_mut().push(process_xor_one(&self_rc.blocks_raw_raw.borrow()[self_rc.blocks_raw_raw.borrow().len() - 1], ((155 as i32) ^ (((((_i as i32) << (4 as i32)) as i32) | (_io.pos() as i32)) as i32))));
            let blocks_raw = self_rc.blocks_raw.borrow();
            let io_blocks_raw = BytesReader::from(blocks_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, ProcessRepeatUsertypeDynargXor_Block>(&io_blocks_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.blocks.borrow_mut().push(t);
        }
        let t = Self::read_into::<_, ProcessRepeatUsertypeDynargXor_BlocksBWrapper>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.blocks_b.borrow_mut() = t;
        Ok(())
    }
}
impl ProcessRepeatUsertypeDynargXor {
}
impl ProcessRepeatUsertypeDynargXor {
    pub fn blocks(&self) -> Ref<'_, Vec<OptRc<ProcessRepeatUsertypeDynargXor_Block>>> {
        self.blocks.borrow()
    }
}
impl ProcessRepeatUsertypeDynargXor {
    pub fn blocks_b(&self) -> Ref<'_, OptRc<ProcessRepeatUsertypeDynargXor_BlocksBWrapper>> {
        self.blocks_b.borrow()
    }
}
impl ProcessRepeatUsertypeDynargXor {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessRepeatUsertypeDynargXor {
    pub fn blocks_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_raw.borrow()
    }
}
impl ProcessRepeatUsertypeDynargXor {
    pub fn blocks_raw_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_raw_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertypeDynargXor_Block {
    pub _root: SharedType<ProcessRepeatUsertypeDynargXor>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargXor>,
    pub _self: SharedType<Self>,
    a: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessRepeatUsertypeDynargXor_Block {
    type Root = ProcessRepeatUsertypeDynargXor;
    type Parent = ProcessRepeatUsertypeDynargXor;

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
impl ProcessRepeatUsertypeDynargXor_Block {
}
impl ProcessRepeatUsertypeDynargXor_Block {
    pub fn a(&self) -> Ref<'_, u32> {
        self.a.borrow()
    }
}
impl ProcessRepeatUsertypeDynargXor_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertypeDynargXor_BlocksBWrapper {
    pub _root: SharedType<ProcessRepeatUsertypeDynargXor>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargXor>,
    pub _self: SharedType<Self>,
    dummy: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_blocks_0_b: Cell<bool>,
    blocks_0_b: RefCell<u8>,
    f_blocks_1_b: Cell<bool>,
    blocks_1_b: RefCell<u8>,
}
impl KStruct for ProcessRepeatUsertypeDynargXor_BlocksBWrapper {
    type Root = ProcessRepeatUsertypeDynargXor;
    type Parent = ProcessRepeatUsertypeDynargXor;

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
impl ProcessRepeatUsertypeDynargXor_BlocksBWrapper {
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
impl ProcessRepeatUsertypeDynargXor_BlocksBWrapper {
    pub fn dummy(&self) -> Ref<'_, u8> {
        self.dummy.borrow()
    }
}
impl ProcessRepeatUsertypeDynargXor_BlocksBWrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
