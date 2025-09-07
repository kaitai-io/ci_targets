// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class InstanceInSized extends KaitaiStruct.ReadWrite {
    public static InstanceInSized fromFile(String fileName) throws IOException {
        return new InstanceInSized(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceInSized() {
        this(null, null, null);
    }

    public InstanceInSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceInSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceInSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceInSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_cont = this._io.readBytes(16);
        KaitaiStream _io__raw_cont = new ByteBufferKaitaiStream(this._raw_cont);
        this.cont = new Wrapper(_io__raw_cont, this, _root);
        this.cont._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.cont._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_cont = new ByteBufferKaitaiStream(16);
        this._io.addChildStream(_io__raw_cont);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (16));
            final InstanceInSized _this = this;
            _io__raw_cont.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_cont = _io__raw_cont.toByteArray();
                    if (_this._raw_cont.length != 16)
                        throw new ConsistencyError("raw(cont)", 16, _this._raw_cont.length);
                    parent.writeBytes(_this._raw_cont);
                }
            });
        }
        this.cont._write_Seq(_io__raw_cont);
    }

    public void _check() {
        if (!Objects.equals(this.cont._root(), _root()))
            throw new ConsistencyError("cont", _root(), this.cont._root());
        if (!Objects.equals(this.cont._parent(), this))
            throw new ConsistencyError("cont", this, this.cont._parent());
        _dirty = false;
    }
    public static class Bar extends KaitaiStruct.ReadWrite {
        public static Bar fromFile(String fileName) throws IOException {
            return new Bar(new ByteBufferKaitaiStream(fileName));
        }
        public Bar() {
            this(null, null, null);
        }

        public Bar(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Bar(KaitaiStream _io, InstanceInSized.Wrapper _parent) {
            this(_io, _parent, null);
        }

        public Bar(KaitaiStream _io, InstanceInSized.Wrapper _parent, InstanceInSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.seqF = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
            inst();
            if (this.inst != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteInst = _enabledInst;
            this._io.writeU1(this.seqF);
        }

        public void _check() {
            if (_enabledInst) {
                if (this.inst.length != 3)
                    throw new ConsistencyError("inst", 3, this.inst.length);
            }
            _dirty = false;
        }
        private byte[] inst;
        private boolean _shouldWriteInst = false;
        private boolean _enabledInst = true;
        public byte[] inst() {
            if (_shouldWriteInst)
                _writeInst();
            if (this.inst != null)
                return this.inst;
            if (!_enabledInst)
                return null;
            long _pos = this._io.pos();
            this._io.seek(4 + 1);
            this.inst = this._io.readBytes(3);
            this._io.seek(_pos);
            return this.inst;
        }
        public void setInst(byte[] _v) { _dirty = true; inst = _v; }
        public void setInst_Enabled(boolean _v) { _dirty = true; _enabledInst = _v; }

        private void _writeInst() {
            _shouldWriteInst = false;
            long _pos = this._io.pos();
            this._io.seek(4 + 1);
            this._io.writeBytes(this.inst);
            this._io.seek(_pos);
        }
        private int seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public int seqF() { return seqF; }
        public void setSeqF(int _v) { _dirty = true; seqF = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _dirty = true; _root = _v; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
        public void set_parent(InstanceInSized.Wrapper _v) { _dirty = true; _parent = _v; }
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

        public Baz(KaitaiStream _io, InstanceInSized.Wrapper _parent) {
            this(_io, _parent, null);
        }

        public Baz(KaitaiStream _io, InstanceInSized.Wrapper _parent, InstanceInSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.seqF = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
            inst();
            if (this.inst != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteInst = _enabledInst;
            this._io.writeU1(this.seqF);
        }

        public void _check() {
            if (_enabledInst) {
                if (this.inst.length != 3)
                    throw new ConsistencyError("inst", 3, this.inst.length);
            }
            _dirty = false;
        }
        private byte[] inst;
        private boolean _shouldWriteInst = false;
        private boolean _enabledInst = true;
        public byte[] inst() {
            if (_shouldWriteInst)
                _writeInst();
            if (this.inst != null)
                return this.inst;
            if (!_enabledInst)
                return null;
            long _pos = this._io.pos();
            this._io.seek(8 + 1);
            this.inst = this._io.readBytes(3);
            this._io.seek(_pos);
            return this.inst;
        }
        public void setInst(byte[] _v) { _dirty = true; inst = _v; }
        public void setInst_Enabled(boolean _v) { _dirty = true; _enabledInst = _v; }

        private void _writeInst() {
            _shouldWriteInst = false;
            long _pos = this._io.pos();
            this._io.seek(8 + 1);
            this._io.writeBytes(this.inst);
            this._io.seek(_pos);
        }
        private int seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public int seqF() { return seqF; }
        public void setSeqF(int _v) { _dirty = true; seqF = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _dirty = true; _root = _v; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
        public void set_parent(InstanceInSized.Wrapper _v) { _dirty = true; _parent = _v; }
    }
    public static class Qux extends KaitaiStruct.ReadWrite {
        public static Qux fromFile(String fileName) throws IOException {
            return new Qux(new ByteBufferKaitaiStream(fileName));
        }
        public Qux() {
            this(null, null, null);
        }

        public Qux(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Qux(KaitaiStream _io, InstanceInSized.Wrapper _parent) {
            this(_io, _parent, null);
        }

        public Qux(KaitaiStream _io, InstanceInSized.Wrapper _parent, InstanceInSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            if (instInvoked() > 0) {
                this.seqF = this._io.readU1();
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            if (instInvoked() > 0) {
            }
            instInvoked();
            if (this.instInvoked != null) {
            }
            instUnusedBySeq();
            if (this.instUnusedBySeq != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteInstInvoked = _enabledInstInvoked;
            _shouldWriteInstUnusedBySeq = _enabledInstUnusedBySeq;
            if (instInvoked() > 0) {
                this._io.writeU1(this.seqF);
            }
        }

        public void _check() {
            if (_enabledInstInvoked) {
            }
            if (_enabledInstUnusedBySeq) {
                if (this.instUnusedBySeq.length != 2)
                    throw new ConsistencyError("inst_unused_by_seq", 2, this.instUnusedBySeq.length);
            }
            _dirty = false;
        }
        private Integer instInvoked;
        private boolean _shouldWriteInstInvoked = false;
        private boolean _enabledInstInvoked = true;
        public Integer instInvoked() {
            if (_shouldWriteInstInvoked)
                _writeInstInvoked();
            if (this.instInvoked != null)
                return this.instInvoked;
            if (!_enabledInstInvoked)
                return null;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this.instInvoked = this._io.readU1();
            this._io.seek(_pos);
            return this.instInvoked;
        }
        public void setInstInvoked(int _v) { _dirty = true; instInvoked = _v; }
        public void setInstInvoked_Enabled(boolean _v) { _dirty = true; _enabledInstInvoked = _v; }

        private void _writeInstInvoked() {
            _shouldWriteInstInvoked = false;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this._io.writeU1(this.instInvoked);
            this._io.seek(_pos);
        }
        private byte[] instUnusedBySeq;
        private boolean _shouldWriteInstUnusedBySeq = false;
        private boolean _enabledInstUnusedBySeq = true;
        public byte[] instUnusedBySeq() {
            if (_shouldWriteInstUnusedBySeq)
                _writeInstUnusedBySeq();
            if (this.instUnusedBySeq != null)
                return this.instUnusedBySeq;
            if (!_enabledInstUnusedBySeq)
                return null;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this.instUnusedBySeq = this._io.readBytes(2);
            this._io.seek(_pos);
            return this.instUnusedBySeq;
        }
        public void setInstUnusedBySeq(byte[] _v) { _dirty = true; instUnusedBySeq = _v; }
        public void setInstUnusedBySeq_Enabled(boolean _v) { _dirty = true; _enabledInstUnusedBySeq = _v; }

        private void _writeInstUnusedBySeq() {
            _shouldWriteInstUnusedBySeq = false;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this._io.writeBytes(this.instUnusedBySeq);
            this._io.seek(_pos);
        }
        private Integer seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public Integer seqF() { return seqF; }
        public void setSeqF(Integer _v) { _dirty = true; seqF = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _dirty = true; _root = _v; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
        public void set_parent(InstanceInSized.Wrapper _v) { _dirty = true; _parent = _v; }
    }
    public static class Wrapper extends KaitaiStruct.ReadWrite {
        public static Wrapper fromFile(String fileName) throws IOException {
            return new Wrapper(new ByteBufferKaitaiStream(fileName));
        }
        public Wrapper() {
            this(null, null, null);
        }

        public Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Wrapper(KaitaiStream _io, InstanceInSized _parent) {
            this(_io, _parent, null);
        }

        public Wrapper(KaitaiStream _io, InstanceInSized _parent, InstanceInSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this._raw_seqSized = this._io.readBytes(4);
            KaitaiStream _io__raw_seqSized = new ByteBufferKaitaiStream(this._raw_seqSized);
            this.seqSized = new Qux(_io__raw_seqSized, this, _root);
            this.seqSized._read();
            this.seqInStream = new Bar(this._io, this, _root);
            this.seqInStream._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.seqSized._fetchInstances();
            this.seqInStream._fetchInstances();
            instInStream();
            if (this.instInStream != null) {
                this.instInStream._fetchInstances();
            }
            instSized();
            if (this.instSized != null) {
                this.instSized._fetchInstances();
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteInstInStream = _enabledInstInStream;
            _shouldWriteInstSized = _enabledInstSized;
            final KaitaiStream _io__raw_seqSized = new ByteBufferKaitaiStream(4);
            this._io.addChildStream(_io__raw_seqSized);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (4));
                final Wrapper _this = this;
                _io__raw_seqSized.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_seqSized = _io__raw_seqSized.toByteArray();
                        if (_this._raw_seqSized.length != 4)
                            throw new ConsistencyError("raw(seq_sized)", 4, _this._raw_seqSized.length);
                        parent.writeBytes(_this._raw_seqSized);
                    }
                });
            }
            this.seqSized._write_Seq(_io__raw_seqSized);
            this.seqInStream._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.seqSized._root(), _root()))
                throw new ConsistencyError("seq_sized", _root(), this.seqSized._root());
            if (!Objects.equals(this.seqSized._parent(), this))
                throw new ConsistencyError("seq_sized", this, this.seqSized._parent());
            if (!Objects.equals(this.seqInStream._root(), _root()))
                throw new ConsistencyError("seq_in_stream", _root(), this.seqInStream._root());
            if (!Objects.equals(this.seqInStream._parent(), this))
                throw new ConsistencyError("seq_in_stream", this, this.seqInStream._parent());
            if (_enabledInstInStream) {
                if (!Objects.equals(this.instInStream._root(), _root()))
                    throw new ConsistencyError("inst_in_stream", _root(), this.instInStream._root());
                if (!Objects.equals(this.instInStream._parent(), this))
                    throw new ConsistencyError("inst_in_stream", this, this.instInStream._parent());
            }
            if (_enabledInstSized) {
                if (!Objects.equals(this.instSized._root(), _root()))
                    throw new ConsistencyError("inst_sized", _root(), this.instSized._root());
                if (!Objects.equals(this.instSized._parent(), this))
                    throw new ConsistencyError("inst_sized", this, this.instSized._parent());
            }
            _dirty = false;
        }
        private Baz instInStream;
        private boolean _shouldWriteInstInStream = false;
        private boolean _enabledInstInStream = true;
        public Baz instInStream() {
            if (_shouldWriteInstInStream)
                _writeInstInStream();
            if (this.instInStream != null)
                return this.instInStream;
            if (!_enabledInstInStream)
                return null;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 3);
            this.instInStream = new Baz(this._io, this, _root);
            this.instInStream._read();
            this._io.seek(_pos);
            return this.instInStream;
        }
        public void setInstInStream(Baz _v) { _dirty = true; instInStream = _v; }
        public void setInstInStream_Enabled(boolean _v) { _dirty = true; _enabledInstInStream = _v; }

        private void _writeInstInStream() {
            _shouldWriteInstInStream = false;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 3);
            this.instInStream._write_Seq(this._io);
            this._io.seek(_pos);
        }
        private Qux instSized;
        private boolean _shouldWriteInstSized = false;
        private boolean _enabledInstSized = true;
        public Qux instSized() {
            if (_shouldWriteInstSized)
                _writeInstSized();
            if (this.instSized != null)
                return this.instSized;
            if (!_enabledInstSized)
                return null;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 7);
            this._raw_instSized = this._io.readBytes(4);
            KaitaiStream _io__raw_instSized = new ByteBufferKaitaiStream(this._raw_instSized);
            this.instSized = new Qux(_io__raw_instSized, this, _root);
            this.instSized._read();
            this._io.seek(_pos);
            return this.instSized;
        }
        public void setInstSized(Qux _v) { _dirty = true; instSized = _v; }
        public void setInstSized_Enabled(boolean _v) { _dirty = true; _enabledInstSized = _v; }

        private void _writeInstSized() {
            _shouldWriteInstSized = false;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 7);
            final KaitaiStream _io__raw_instSized = new ByteBufferKaitaiStream(4);
            this._io.addChildStream(_io__raw_instSized);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (4));
                final Wrapper _this = this;
                _io__raw_instSized.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_instSized = _io__raw_instSized.toByteArray();
                        if (_this._raw_instSized.length != 4)
                            throw new ConsistencyError("raw(inst_sized)", 4, _this._raw_instSized.length);
                        parent.writeBytes(_this._raw_instSized);
                    }
                });
            }
            this.instSized._write_Seq(_io__raw_instSized);
            this._io.seek(_pos);
        }
        private Qux seqSized;
        private Bar seqInStream;
        private InstanceInSized _root;
        private InstanceInSized _parent;
        private byte[] _raw_seqSized;
        private byte[] _raw_instSized;
        public Qux seqSized() { return seqSized; }
        public void setSeqSized(Qux _v) { _dirty = true; seqSized = _v; }
        public Bar seqInStream() { return seqInStream; }
        public void setSeqInStream(Bar _v) { _dirty = true; seqInStream = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _dirty = true; _root = _v; }
        public InstanceInSized _parent() { return _parent; }
        public void set_parent(InstanceInSized _v) { _dirty = true; _parent = _v; }
        public byte[] _raw_seqSized() { return _raw_seqSized; }
        public void set_raw_SeqSized(byte[] _v) { _dirty = true; _raw_seqSized = _v; }
        public byte[] _raw_instSized() { return _raw_instSized; }
        public void set_raw_InstSized(byte[] _v) { _dirty = true; _raw_instSized = _v; }
    }
    private Wrapper cont;
    private InstanceInSized _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_cont;
    public Wrapper cont() { return cont; }
    public void setCont(Wrapper _v) { _dirty = true; cont = _v; }
    public InstanceInSized _root() { return _root; }
    public void set_root(InstanceInSized _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_cont() { return _raw_cont; }
    public void set_raw_Cont(byte[] _v) { _dirty = true; _raw_cont = _v; }
}
