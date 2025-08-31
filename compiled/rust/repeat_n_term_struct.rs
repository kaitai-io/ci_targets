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
pub struct RepeatNTermStruct {
    pub _root: SharedType<RepeatNTermStruct>,
    pub _parent: SharedType<RepeatNTermStruct>,
    pub _self: SharedType<Self>,
    records1: RefCell<Vec<OptRc<RepeatNTermStruct_BytesWrapper>>>,
    records2: RefCell<Vec<OptRc<RepeatNTermStruct_BytesWrapper>>>,
    records3: RefCell<Vec<OptRc<RepeatNTermStruct_BytesWrapper>>>,
    _io: RefCell<BytesReader>,
    records1_raw: RefCell<Vec<Vec<u8>>>,
    records2_raw: RefCell<Vec<Vec<u8>>>,
    records3_raw: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for RepeatNTermStruct {
    type Root = RepeatNTermStruct;
    type Parent = RepeatNTermStruct;

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
        *self_rc.records1_raw.borrow_mut() = Vec::new();
        *self_rc.records1.borrow_mut() = Vec::new();
        let l_records1 = 2;
        for _i in 0..l_records1 {
            self_rc.records1_raw.borrow_mut().push(_io.read_bytes_term(170, false, true, true)?.into());
            let records1_raw = self_rc.records1_raw.borrow();
            let io_records1_raw = BytesReader::from(records1_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, RepeatNTermStruct_BytesWrapper>(&io_records1_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.records1.borrow_mut().push(t);
        }
        *self_rc.records2_raw.borrow_mut() = Vec::new();
        *self_rc.records2.borrow_mut() = Vec::new();
        let l_records2 = 2;
        for _i in 0..l_records2 {
            self_rc.records2_raw.borrow_mut().push(_io.read_bytes_term(170, true, true, true)?.into());
            let records2_raw = self_rc.records2_raw.borrow();
            let io_records2_raw = BytesReader::from(records2_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, RepeatNTermStruct_BytesWrapper>(&io_records2_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.records2.borrow_mut().push(t);
        }
        *self_rc.records3_raw.borrow_mut() = Vec::new();
        *self_rc.records3.borrow_mut() = Vec::new();
        let l_records3 = 2;
        for _i in 0..l_records3 {
            self_rc.records3_raw.borrow_mut().push(_io.read_bytes_term(85, false, false, true)?.into());
            let records3_raw = self_rc.records3_raw.borrow();
            let io_records3_raw = BytesReader::from(records3_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, RepeatNTermStruct_BytesWrapper>(&io_records3_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.records3.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl RepeatNTermStruct {
}
impl RepeatNTermStruct {
    pub fn records1(&self) -> Ref<'_, Vec<OptRc<RepeatNTermStruct_BytesWrapper>>> {
        self.records1.borrow()
    }
}
impl RepeatNTermStruct {
    pub fn records2(&self) -> Ref<'_, Vec<OptRc<RepeatNTermStruct_BytesWrapper>>> {
        self.records2.borrow()
    }
}
impl RepeatNTermStruct {
    pub fn records3(&self) -> Ref<'_, Vec<OptRc<RepeatNTermStruct_BytesWrapper>>> {
        self.records3.borrow()
    }
}
impl RepeatNTermStruct {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl RepeatNTermStruct {
    pub fn records1_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records1_raw.borrow()
    }
}
impl RepeatNTermStruct {
    pub fn records2_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records2_raw.borrow()
    }
}
impl RepeatNTermStruct {
    pub fn records3_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records3_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct RepeatNTermStruct_BytesWrapper {
    pub _root: SharedType<RepeatNTermStruct>,
    pub _parent: SharedType<RepeatNTermStruct>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatNTermStruct_BytesWrapper {
    type Root = RepeatNTermStruct;
    type Parent = RepeatNTermStruct;

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
        *self_rc.value.borrow_mut() = _io.read_bytes_full()?.into();
        Ok(())
    }
}
impl RepeatNTermStruct_BytesWrapper {
}
impl RepeatNTermStruct_BytesWrapper {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl RepeatNTermStruct_BytesWrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
