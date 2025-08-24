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
pub struct ProcessRepeatUsertype {
    pub _root: SharedType<ProcessRepeatUsertype>,
    pub _parent: SharedType<ProcessRepeatUsertype>,
    pub _self: SharedType<Self>,
    blocks: RefCell<Vec<OptRc<ProcessRepeatUsertype_Block>>>,
    _io: RefCell<BytesReader>,
    blocks_raw: RefCell<Vec<Vec<u8>>>,
    blocks_raw_raw: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for ProcessRepeatUsertype {
    type Root = ProcessRepeatUsertype;
    type Parent = ProcessRepeatUsertype;

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
            self_rc.blocks_raw.borrow_mut().push(process_xor_one(&self_rc.blocks_raw_raw.borrow()[self_rc.blocks_raw_raw.borrow().len() - 1], 158));
            let blocks_raw = self_rc.blocks_raw.borrow();
            let io_blocks_raw = BytesReader::from(blocks_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, ProcessRepeatUsertype_Block>(&io_blocks_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.blocks.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl ProcessRepeatUsertype {
}
impl ProcessRepeatUsertype {
    pub fn blocks(&self) -> Ref<'_, Vec<OptRc<ProcessRepeatUsertype_Block>>> {
        self.blocks.borrow()
    }
}
impl ProcessRepeatUsertype {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessRepeatUsertype {
    pub fn blocks_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_raw.borrow()
    }
}
impl ProcessRepeatUsertype {
    pub fn blocks_raw_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_raw_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertype_Block {
    pub _root: SharedType<ProcessRepeatUsertype>,
    pub _parent: SharedType<ProcessRepeatUsertype>,
    pub _self: SharedType<Self>,
    a: RefCell<i32>,
    b: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessRepeatUsertype_Block {
    type Root = ProcessRepeatUsertype;
    type Parent = ProcessRepeatUsertype;

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
        *self_rc.a.borrow_mut() = _io.read_s4le()?.into();
        *self_rc.b.borrow_mut() = _io.read_s1()?.into();
        Ok(())
    }
}
impl ProcessRepeatUsertype_Block {
}
impl ProcessRepeatUsertype_Block {
    pub fn a(&self) -> Ref<'_, i32> {
        self.a.borrow()
    }
}
impl ProcessRepeatUsertype_Block {
    pub fn b(&self) -> Ref<'_, i8> {
        self.b.borrow()
    }
}
impl ProcessRepeatUsertype_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
