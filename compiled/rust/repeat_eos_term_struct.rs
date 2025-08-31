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
pub struct RepeatEosTermStruct {
    pub _root: SharedType<RepeatEosTermStruct>,
    pub _parent: SharedType<RepeatEosTermStruct>,
    pub _self: SharedType<Self>,
    records: RefCell<Vec<OptRc<RepeatEosTermStruct_BytesWrapper>>>,
    _io: RefCell<BytesReader>,
    records_raw: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for RepeatEosTermStruct {
    type Root = RepeatEosTermStruct;
    type Parent = RepeatEosTermStruct;

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
        *self_rc.records_raw.borrow_mut() = Vec::new();
        *self_rc.records.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                self_rc.records_raw.borrow_mut().push(_io.read_bytes_term(178, true, true, true)?.into());
                let records_raw = self_rc.records_raw.borrow();
                let io_records_raw = BytesReader::from(records_raw.last().unwrap().clone());
                let t = Self::read_into::<BytesReader, RepeatEosTermStruct_BytesWrapper>(&io_records_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.records.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl RepeatEosTermStruct {
}
impl RepeatEosTermStruct {
    pub fn records(&self) -> Ref<'_, Vec<OptRc<RepeatEosTermStruct_BytesWrapper>>> {
        self.records.borrow()
    }
}
impl RepeatEosTermStruct {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl RepeatEosTermStruct {
    pub fn records_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct RepeatEosTermStruct_BytesWrapper {
    pub _root: SharedType<RepeatEosTermStruct>,
    pub _parent: SharedType<RepeatEosTermStruct>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatEosTermStruct_BytesWrapper {
    type Root = RepeatEosTermStruct;
    type Parent = RepeatEosTermStruct;

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
impl RepeatEosTermStruct_BytesWrapper {
}
impl RepeatEosTermStruct_BytesWrapper {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl RepeatEosTermStruct_BytesWrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
