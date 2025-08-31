// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class InstanceIoUserEarlier extends KaitaiStruct.ReadWrite {
    public static InstanceIoUserEarlier fromFile(String fileName) throws IOException {
        return new InstanceIoUserEarlier(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceIoUserEarlier() {
        this(null, null, null);
    }

    public InstanceIoUserEarlier(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceIoUserEarlier(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceIoUserEarlier(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceIoUserEarlier _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_sizedA = this._io.readBytes(6);
        KaitaiStream _io__raw_sizedA = new ByteBufferKaitaiStream(this._raw_sizedA);
        this.sizedA = new Slot(_io__raw_sizedA, this, _root);
        this.sizedA._read();
        this._raw_sizedB = this._io.readBytes(6);
        KaitaiStream _io__raw_sizedB = new ByteBufferKaitaiStream(this._raw_sizedB);
        this.sizedB = new Slot(_io__raw_sizedB, this, _root);
        this.sizedB._read();
        this.intoB = new Foo(this._io, this, _root);
        this.intoB._read();
        this.intoASkipped = new Foo(this._io, this, _root);
        this.intoASkipped._read();
        this.intoA = new Foo(this._io, this, _root);
        this.intoA._read();
        this.lastAccessor = new Baz(this._io, this, _root);
        this.lastAccessor._read();
    }

    public void _fetchInstances() {
        this.sizedA._fetchInstances();
        this.sizedB._fetchInstances();
        this.intoB._fetchInstances();
        this.intoASkipped._fetchInstances();
        this.intoA._fetchInstances();
        this.lastAccessor._fetchInstances();
        aMid();
        bMid();
    }

    public void _write_Seq() {
        _writeAMid = _toWriteAMid;
        _writeBMid = _toWriteBMid;
        final KaitaiStream _io__raw_sizedA = new ByteBufferKaitaiStream(6);
        this._io.addChildStream(_io__raw_sizedA);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (6));
            final InstanceIoUserEarlier _this = this;
            _io__raw_sizedA.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_sizedA = _io__raw_sizedA.toByteArray();
                    if (_this._raw_sizedA.length != 6)
                        throw new ConsistencyError("raw(sized_a)", _this._raw_sizedA.length, 6);
                    parent.writeBytes(_this._raw_sizedA);
                }
            });
        }
        this.sizedA._write_Seq(_io__raw_sizedA);
        final KaitaiStream _io__raw_sizedB = new ByteBufferKaitaiStream(6);
        this._io.addChildStream(_io__raw_sizedB);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (6));
            final InstanceIoUserEarlier _this = this;
            _io__raw_sizedB.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_sizedB = _io__raw_sizedB.toByteArray();
                    if (_this._raw_sizedB.length != 6)
                        throw new ConsistencyError("raw(sized_b)", _this._raw_sizedB.length, 6);
                    parent.writeBytes(_this._raw_sizedB);
                }
            });
        }
        this.sizedB._write_Seq(_io__raw_sizedB);
        this.intoB._write_Seq(this._io);
        this.intoASkipped._write_Seq(this._io);
        this.intoA._write_Seq(this._io);
        this.lastAccessor._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.sizedA._root(), _root()))
            throw new ConsistencyError("sized_a", this.sizedA._root(), _root());
        if (!Objects.equals(this.sizedA._parent(), this))
            throw new ConsistencyError("sized_a", this.sizedA._parent(), this);
        if (!Objects.equals(this.sizedB._root(), _root()))
            throw new ConsistencyError("sized_b", this.sizedB._root(), _root());
        if (!Objects.equals(this.sizedB._parent(), this))
            throw new ConsistencyError("sized_b", this.sizedB._parent(), this);
        if (!Objects.equals(this.intoB._root(), _root()))
            throw new ConsistencyError("into_b", this.intoB._root(), _root());
        if (!Objects.equals(this.intoB._parent(), this))
            throw new ConsistencyError("into_b", this.intoB._parent(), this);
        if (!Objects.equals(this.intoASkipped._root(), _root()))
            throw new ConsistencyError("into_a_skipped", this.intoASkipped._root(), _root());
        if (!Objects.equals(this.intoASkipped._parent(), this))
            throw new ConsistencyError("into_a_skipped", this.intoASkipped._parent(), this);
        if (!Objects.equals(this.intoA._root(), _root()))
            throw new ConsistencyError("into_a", this.intoA._root(), _root());
        if (!Objects.equals(this.intoA._parent(), this))
            throw new ConsistencyError("into_a", this.intoA._parent(), this);
        if (!Objects.equals(this.lastAccessor._root(), _root()))
            throw new ConsistencyError("last_accessor", this.lastAccessor._root(), _root());
        if (!Objects.equals(this.lastAccessor._parent(), this))
            throw new ConsistencyError("last_accessor", this.lastAccessor._parent(), this);
    }
    public static class Baz extends KaitaiStruct.ReadWrite {
        public static Baz fromFile(String fileName) throws IOException {
            return new Baz(new ByteBufferKaitaiStream(fileName));
        }
        public Baz() {
            this(null, null, null);
        }

        public Baz(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Baz(KaitaiStream _io, InstanceIoUserEarlier _parent) {
            this(_io, _parent, null);
        }

        public Baz(KaitaiStream _io, InstanceIoUserEarlier _parent, InstanceIoUserEarlier _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            if (_parent().intoB().inst().last() == 89) {
                this.v = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if (_parent().intoB().inst().last() == 89) {
            }
        }

        public void _write_Seq() {
            if (_parent().intoB().inst().last() == 89) {
                this._io.writeU1(this.v);
            }
        }

        public void _check() {
            if (_parent().intoB().inst().last() == 89) {
            }
        }
        private Integer v;
        private InstanceIoUserEarlier _root;
        private InstanceIoUserEarlier _parent;
        public Integer v() { return v; }
        public void setV(Integer _v) { v = _v; }
        public InstanceIoUserEarlier _root() { return _root; }
        public void set_root(InstanceIoUserEarlier _v) { _root = _v; }
        public InstanceIoUserEarlier _parent() { return _parent; }
        public void set_parent(InstanceIoUserEarlier _v) { _parent = _v; }
    }
    public static class Foo extends KaitaiStruct.ReadWrite {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }
        public Foo() {
            this(null, null, null);
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, InstanceIoUserEarlier _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, InstanceIoUserEarlier _parent, InstanceIoUserEarlier _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.indicator = this._io.readU1();
            if ( ((inst()._io().size() != 0) && (inst().content() == 102)) ) {
                this.bar = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if ( ((inst()._io().size() != 0) && (inst().content() == 102)) ) {
            }
            inst();
            this.inst._fetchInstances();
        }

        public void _write_Seq() {
            _writeInst = _toWriteInst;
            this._io.writeU1(this.indicator);
            if ( ((inst()._io().size() != 0) && (inst().content() == 102)) ) {
                this._io.writeU1(this.bar);
            }
        }

        public void _check() {
        }
        private Slot inst;
        private boolean _writeInst = false;
        private boolean _toWriteInst = true;
        public Slot inst() {
            if (_writeInst)
                _writeInst();
            if (this.inst != null)
                return this.inst;
            KaitaiStream io = (indicator() == 202 ? _parent().sizedB()._io() : _parent().sizedA()._io());
            long _pos = io.pos();
            io.seek(1);
            this._raw_inst = io.readBytes((_io().pos() != 14 ? 4 : 0));
            KaitaiStream _io__raw_inst = new ByteBufferKaitaiStream(this._raw_inst);
            this.inst = new Slot(_io__raw_inst, this, _root);
            this.inst._read();
            io.seek(_pos);
            return this.inst;
        }
        public void setInst(Slot _v) { inst = _v; }
        public void setInst_ToWrite(boolean _v) { _toWriteInst = _v; }

        public void _writeInst() {
            _writeInst = false;
            KaitaiStream io = (indicator() == 202 ? _parent().sizedB()._io() : _parent().sizedA()._io());
            long _pos = io.pos();
            io.seek(1);
            final KaitaiStream _io__raw_inst = new ByteBufferKaitaiStream((_io().pos() != 14 ? 4 : 0));
            io.addChildStream(_io__raw_inst);
            {
                long _pos2 = io.pos();
                io.seek(io.pos() + ((_io().pos() != 14 ? 4 : 0)));
                final Foo _this = this;
                _io__raw_inst.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_inst = _io__raw_inst.toByteArray();
                        if (_this._raw_inst.length != (_io().pos() != 14 ? 4 : 0))
                            throw new ConsistencyError("raw(inst)", _this._raw_inst.length, (_io().pos() != 14 ? 4 : 0));
                        parent.writeBytes(_this._raw_inst);
                    }
                });
            }
            this.inst._write_Seq(_io__raw_inst);
            io.seek(_pos);
        }

        public void _checkInst() {
            if (!Objects.equals(this.inst._root(), _root()))
                throw new ConsistencyError("inst", this.inst._root(), _root());
            if (!Objects.equals(this.inst._parent(), this))
                throw new ConsistencyError("inst", this.inst._parent(), this);
        }
        private int indicator;
        private Integer bar;
        private InstanceIoUserEarlier _root;
        private InstanceIoUserEarlier _parent;
        private byte[] _raw_inst;
        public int indicator() { return indicator; }
        public void setIndicator(int _v) { indicator = _v; }
        public Integer bar() { return bar; }
        public void setBar(Integer _v) { bar = _v; }
        public InstanceIoUserEarlier _root() { return _root; }
        public void set_root(InstanceIoUserEarlier _v) { _root = _v; }
        public InstanceIoUserEarlier _parent() { return _parent; }
        public void set_parent(InstanceIoUserEarlier _v) { _parent = _v; }
        public byte[] _raw_inst() { return _raw_inst; }
        public void set_raw_Inst(byte[] _v) { _raw_inst = _v; }
    }
    public static class Slot extends KaitaiStruct.ReadWrite {
        public static Slot fromFile(String fileName) throws IOException {
            return new Slot(new ByteBufferKaitaiStream(fileName));
        }
        public Slot() {
            this(null, null, null);
        }

        public Slot(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Slot(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public Slot(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceIoUserEarlier _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            if (_io().size() != 0) {
                this.content = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if (_io().size() != 0) {
            }
            if (_io().size() != 0) {
                last();
            }
        }

        public void _write_Seq() {
            _writeLast = _toWriteLast;
            if (_io().size() != 0) {
                this._io.writeU1(this.content);
            }
        }

        public void _check() {
        }
        private Integer last;
        private boolean _writeLast = false;
        private boolean _toWriteLast = true;
        public Integer last() {
            if (_writeLast)
                _writeLast();
            if (this.last != null)
                return this.last;
            if (_io().size() != 0) {
                long _pos = this._io.pos();
                this._io.seek(_io().size() - 1);
                this.last = this._io.readU1();
                this._io.seek(_pos);
            }
            return this.last;
        }
        public void setLast(Integer _v) { last = _v; }
        public void setLast_ToWrite(boolean _v) { _toWriteLast = _v; }

        public void _writeLast() {
            _writeLast = false;
            if (_io().size() != 0) {
                long _pos = this._io.pos();
                this._io.seek(_io().size() - 1);
                this._io.writeU1(this.last);
                this._io.seek(_pos);
            }
        }

        public void _checkLast() {
        }
        private Integer content;
        private InstanceIoUserEarlier _root;
        private KaitaiStruct.ReadWrite _parent;
        public Integer content() { return content; }
        public void setContent(Integer _v) { content = _v; }
        public InstanceIoUserEarlier _root() { return _root; }
        public void set_root(InstanceIoUserEarlier _v) { _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    }
    private Integer aMid;
    private boolean _writeAMid = false;
    private boolean _toWriteAMid = true;
    public Integer aMid() {
        if (_writeAMid)
            _writeAMid();
        if (this.aMid != null)
            return this.aMid;
        KaitaiStream io = intoA().inst()._io();
        long _pos = io.pos();
        io.seek(1);
        this.aMid = io.readU2le();
        io.seek(_pos);
        return this.aMid;
    }
    public void setAMid(int _v) { aMid = _v; }
    public void setAMid_ToWrite(boolean _v) { _toWriteAMid = _v; }

    public void _writeAMid() {
        _writeAMid = false;
        KaitaiStream io = intoA().inst()._io();
        long _pos = io.pos();
        io.seek(1);
        io.writeU2le(this.aMid);
        io.seek(_pos);
    }

    public void _checkAMid() {
    }
    private Integer bMid;
    private boolean _writeBMid = false;
    private boolean _toWriteBMid = true;
    public Integer bMid() {
        if (_writeBMid)
            _writeBMid();
        if (this.bMid != null)
            return this.bMid;
        KaitaiStream io = intoB().inst()._io();
        long _pos = io.pos();
        io.seek(1);
        this.bMid = io.readU2le();
        io.seek(_pos);
        return this.bMid;
    }
    public void setBMid(int _v) { bMid = _v; }
    public void setBMid_ToWrite(boolean _v) { _toWriteBMid = _v; }

    public void _writeBMid() {
        _writeBMid = false;
        KaitaiStream io = intoB().inst()._io();
        long _pos = io.pos();
        io.seek(1);
        io.writeU2le(this.bMid);
        io.seek(_pos);
    }

    public void _checkBMid() {
    }
    private Slot sizedA;
    private Slot sizedB;
    private Foo intoB;
    private Foo intoASkipped;
    private Foo intoA;
    private Baz lastAccessor;
    private InstanceIoUserEarlier _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_sizedA;
    private byte[] _raw_sizedB;
    public Slot sizedA() { return sizedA; }
    public void setSizedA(Slot _v) { sizedA = _v; }
    public Slot sizedB() { return sizedB; }
    public void setSizedB(Slot _v) { sizedB = _v; }
    public Foo intoB() { return intoB; }
    public void setIntoB(Foo _v) { intoB = _v; }
    public Foo intoASkipped() { return intoASkipped; }
    public void setIntoASkipped(Foo _v) { intoASkipped = _v; }
    public Foo intoA() { return intoA; }
    public void setIntoA(Foo _v) { intoA = _v; }
    public Baz lastAccessor() { return lastAccessor; }
    public void setLastAccessor(Baz _v) { lastAccessor = _v; }
    public InstanceIoUserEarlier _root() { return _root; }
    public void set_root(InstanceIoUserEarlier _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_sizedA() { return _raw_sizedA; }
    public void set_raw_SizedA(byte[] _v) { _raw_sizedA = _v; }
    public byte[] _raw_sizedB() { return _raw_sizedB; }
    public void set_raw_SizedB(byte[] _v) { _raw_sizedB = _v; }
}
