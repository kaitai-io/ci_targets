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
pub struct InstanceIoUserEarlier {
    pub _root: SharedType<InstanceIoUserEarlier>,
    pub _parent: SharedType<InstanceIoUserEarlier>,
    pub _self: SharedType<Self>,
    sized_a: RefCell<OptRc<InstanceIoUserEarlier_Slot>>,
    sized_b: RefCell<OptRc<InstanceIoUserEarlier_Slot>>,
    into_b: RefCell<OptRc<InstanceIoUserEarlier_Foo>>,
    into_a_skipped: RefCell<OptRc<InstanceIoUserEarlier_Foo>>,
    into_a: RefCell<OptRc<InstanceIoUserEarlier_Foo>>,
    last_accessor: RefCell<OptRc<InstanceIoUserEarlier_Baz>>,
    _io: RefCell<BytesReader>,
    sized_a_raw: RefCell<Vec<u8>>,
    sized_b_raw: RefCell<Vec<u8>>,
    f_a_mid: Cell<bool>,
    a_mid: RefCell<u16>,
    f_b_mid: Cell<bool>,
    b_mid: RefCell<u16>,
}
impl KStruct for InstanceIoUserEarlier {
    type Root = InstanceIoUserEarlier;
    type Parent = InstanceIoUserEarlier;

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
        *self_rc.sized_a_raw.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        let sized_a_raw = self_rc.sized_a_raw.borrow();
        let _t_sized_a_raw_io = BytesReader::from(sized_a_raw.clone());
        let t = Self::read_into::<BytesReader, InstanceIoUserEarlier_Slot>(&_t_sized_a_raw_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.sized_a.borrow_mut() = t;
        *self_rc.sized_b_raw.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        let sized_b_raw = self_rc.sized_b_raw.borrow();
        let _t_sized_b_raw_io = BytesReader::from(sized_b_raw.clone());
        let t = Self::read_into::<BytesReader, InstanceIoUserEarlier_Slot>(&_t_sized_b_raw_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.sized_b.borrow_mut() = t;
        let t = Self::read_into::<_, InstanceIoUserEarlier_Foo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.into_b.borrow_mut() = t;
        let t = Self::read_into::<_, InstanceIoUserEarlier_Foo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.into_a_skipped.borrow_mut() = t;
        let t = Self::read_into::<_, InstanceIoUserEarlier_Foo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.into_a.borrow_mut() = t;
        let t = Self::read_into::<_, InstanceIoUserEarlier_Baz>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.last_accessor.borrow_mut() = t;
        Ok(())
    }
}
impl InstanceIoUserEarlier {
    pub fn a_mid(
        &self
    ) -> KResult<Ref<'_, u16>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_a_mid.get() {
            return Ok(self.a_mid.borrow());
        }
        self.f_a_mid.set(true);
        let io = Clone::clone(&*self.into_a().inst()?._io());
        let _pos = io.pos();
        io.seek(1 as usize)?;
        *self.a_mid.borrow_mut() = io.read_u2le()?.into();
        io.seek(_pos)?;
        Ok(self.a_mid.borrow())
    }
    pub fn b_mid(
        &self
    ) -> KResult<Ref<'_, u16>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_b_mid.get() {
            return Ok(self.b_mid.borrow());
        }
        self.f_b_mid.set(true);
        let io = Clone::clone(&*self.into_b().inst()?._io());
        let _pos = io.pos();
        io.seek(1 as usize)?;
        *self.b_mid.borrow_mut() = io.read_u2le()?.into();
        io.seek(_pos)?;
        Ok(self.b_mid.borrow())
    }
}
impl InstanceIoUserEarlier {
    pub fn sized_a(&self) -> Ref<'_, OptRc<InstanceIoUserEarlier_Slot>> {
        self.sized_a.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn sized_b(&self) -> Ref<'_, OptRc<InstanceIoUserEarlier_Slot>> {
        self.sized_b.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn into_b(&self) -> Ref<'_, OptRc<InstanceIoUserEarlier_Foo>> {
        self.into_b.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn into_a_skipped(&self) -> Ref<'_, OptRc<InstanceIoUserEarlier_Foo>> {
        self.into_a_skipped.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn into_a(&self) -> Ref<'_, OptRc<InstanceIoUserEarlier_Foo>> {
        self.into_a.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn last_accessor(&self) -> Ref<'_, OptRc<InstanceIoUserEarlier_Baz>> {
        self.last_accessor.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn sized_a_raw(&self) -> Ref<'_, Vec<u8>> {
        self.sized_a_raw.borrow()
    }
}
impl InstanceIoUserEarlier {
    pub fn sized_b_raw(&self) -> Ref<'_, Vec<u8>> {
        self.sized_b_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceIoUserEarlier_Baz {
    pub _root: SharedType<InstanceIoUserEarlier>,
    pub _parent: SharedType<InstanceIoUserEarlier>,
    pub _self: SharedType<Self>,
    v: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for InstanceIoUserEarlier_Baz {
    type Root = InstanceIoUserEarlier;
    type Parent = InstanceIoUserEarlier;

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
        if ((*_prc.as_ref().unwrap().into_b().inst()?.last()? as u8) == (89 as u8)) {
            *self_rc.v.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl InstanceIoUserEarlier_Baz {
}
impl InstanceIoUserEarlier_Baz {
    pub fn v(&self) -> Ref<'_, u8> {
        self.v.borrow()
    }
}
impl InstanceIoUserEarlier_Baz {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceIoUserEarlier_Foo {
    pub _root: SharedType<InstanceIoUserEarlier>,
    pub _parent: SharedType<InstanceIoUserEarlier>,
    pub _self: SharedType<Self>,
    indicator: RefCell<u8>,
    bar: RefCell<u8>,
    _io: RefCell<BytesReader>,
    inst_raw: RefCell<Vec<u8>>,
    f_inst: Cell<bool>,
    inst: RefCell<OptRc<InstanceIoUserEarlier_Slot>>,
}
impl KStruct for InstanceIoUserEarlier_Foo {
    type Root = InstanceIoUserEarlier;
    type Parent = InstanceIoUserEarlier;

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
        *self_rc.indicator.borrow_mut() = _io.read_u1()?.into();
        if  ((((self_rc.inst()?._io().size() as i32) != (0 as i32))) && (((*self_rc.inst()?.content() as u8) == (102 as u8))))  {
            *self_rc.bar.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl InstanceIoUserEarlier_Foo {
    pub fn inst(
        &self
    ) -> KResult<Ref<'_, OptRc<InstanceIoUserEarlier_Slot>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst.get() {
            return Ok(self.inst.borrow());
        }
        let io = Clone::clone(&*if *self.indicator() == 202 { _prc.as_ref().unwrap().sized_b()._io() } else { _prc.as_ref().unwrap().sized_a()._io() });
        let _pos = io.pos();
        io.seek(1 as usize)?;
        *self.inst_raw.borrow_mut() = io.read_bytes(if ((_io.pos() as i32) != (14 as i32)) { 4 } else { 0 } as usize)?.into();
        let inst_raw = self.inst_raw.borrow();
        let _t_inst_raw_io = BytesReader::from(inst_raw.clone());
        let t = Self::read_into::<BytesReader, InstanceIoUserEarlier_Slot>(&_t_inst_raw_io, Some(self._root.clone()), None)?.into();
        *self.inst.borrow_mut() = t;
        io.seek(_pos)?;
        Ok(self.inst.borrow())
    }
}
impl InstanceIoUserEarlier_Foo {
    pub fn indicator(&self) -> Ref<'_, u8> {
        self.indicator.borrow()
    }
}
impl InstanceIoUserEarlier_Foo {
    pub fn bar(&self) -> Ref<'_, u8> {
        self.bar.borrow()
    }
}
impl InstanceIoUserEarlier_Foo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl InstanceIoUserEarlier_Foo {
    pub fn inst_raw(&self) -> Ref<'_, Vec<u8>> {
        self.inst_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceIoUserEarlier_Slot {
    pub _root: SharedType<InstanceIoUserEarlier>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    content: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_last: Cell<bool>,
    last: RefCell<u8>,
}
impl KStruct for InstanceIoUserEarlier_Slot {
    type Root = InstanceIoUserEarlier;
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
        if ((_io.size() as i32) != (0 as i32)) {
            *self_rc.content.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl InstanceIoUserEarlier_Slot {
    pub fn last(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_last.get() {
            return Ok(self.last.borrow());
        }
        self.f_last.set(true);
        if ((_io.size() as i32) != (0 as i32)) {
            let _pos = _io.pos();
            _io.seek(((_io.size() as i32) - (1 as i32)) as usize)?;
            *self.last.borrow_mut() = _io.read_u1()?.into();
            _io.seek(_pos)?;
        }
        Ok(self.last.borrow())
    }
}
impl InstanceIoUserEarlier_Slot {
    pub fn content(&self) -> Ref<'_, u8> {
        self.content.borrow()
    }
}
impl InstanceIoUserEarlier_Slot {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
