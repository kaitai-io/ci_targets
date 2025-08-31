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
    }

    public void _fetchInstances() {
        this.cont._fetchInstances();
    }

    public void _write_Seq() {
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
                        throw new ConsistencyError("raw(cont)", _this._raw_cont.length, 16);
                    parent.writeBytes(_this._raw_cont);
                }
            });
        }
        this.cont._write_Seq(_io__raw_cont);
    }

    public void _check() {
        if (!Objects.equals(this.cont._root(), _root()))
            throw new ConsistencyError("cont", this.cont._root(), _root());
        if (!Objects.equals(this.cont._parent(), this))
            throw new ConsistencyError("cont", this.cont._parent(), this);
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
        }

        public void _fetchInstances() {
            inst();
        }

        public void _write_Seq() {
            _writeInst = _toWriteInst;
            this._io.writeU1(this.seqF);
        }

        public void _check() {
        }
        private byte[] inst;
        private boolean _writeInst = false;
        private boolean _toWriteInst = true;
        public byte[] inst() {
            if (_writeInst)
                _writeInst();
            if (this.inst != null)
                return this.inst;
            long _pos = this._io.pos();
            this._io.seek(4 + 1);
            this.inst = this._io.readBytes(3);
            this._io.seek(_pos);
            return this.inst;
        }
        public void setInst(byte[] _v) { inst = _v; }
        public void setInst_ToWrite(boolean _v) { _toWriteInst = _v; }

        public void _writeInst() {
            _writeInst = false;
            long _pos = this._io.pos();
            this._io.seek(4 + 1);
            this._io.writeBytes(this.inst);
            this._io.seek(_pos);
        }

        public void _checkInst() {
            if (this.inst.length != 3)
                throw new ConsistencyError("inst", this.inst.length, 3);
        }
        private int seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public int seqF() { return seqF; }
        public void setSeqF(int _v) { seqF = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _root = _v; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
        public void set_parent(InstanceInSized.Wrapper _v) { _parent = _v; }
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
        }

        public void _fetchInstances() {
            inst();
        }

        public void _write_Seq() {
            _writeInst = _toWriteInst;
            this._io.writeU1(this.seqF);
        }

        public void _check() {
        }
        private byte[] inst;
        private boolean _writeInst = false;
        private boolean _toWriteInst = true;
        public byte[] inst() {
            if (_writeInst)
                _writeInst();
            if (this.inst != null)
                return this.inst;
            long _pos = this._io.pos();
            this._io.seek(8 + 1);
            this.inst = this._io.readBytes(3);
            this._io.seek(_pos);
            return this.inst;
        }
        public void setInst(byte[] _v) { inst = _v; }
        public void setInst_ToWrite(boolean _v) { _toWriteInst = _v; }

        public void _writeInst() {
            _writeInst = false;
            long _pos = this._io.pos();
            this._io.seek(8 + 1);
            this._io.writeBytes(this.inst);
            this._io.seek(_pos);
        }

        public void _checkInst() {
            if (this.inst.length != 3)
                throw new ConsistencyError("inst", this.inst.length, 3);
        }
        private int seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public int seqF() { return seqF; }
        public void setSeqF(int _v) { seqF = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _root = _v; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
        public void set_parent(InstanceInSized.Wrapper _v) { _parent = _v; }
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
        }

        public void _fetchInstances() {
            if (instInvoked() > 0) {
            }
            instInvoked();
            instUnusedBySeq();
        }

        public void _write_Seq() {
            _writeInstInvoked = _toWriteInstInvoked;
            _writeInstUnusedBySeq = _toWriteInstUnusedBySeq;
            if (instInvoked() > 0) {
                this._io.writeU1(this.seqF);
            }
        }

        public void _check() {
        }
        private Integer instInvoked;
        private boolean _writeInstInvoked = false;
        private boolean _toWriteInstInvoked = true;
        public Integer instInvoked() {
            if (_writeInstInvoked)
                _writeInstInvoked();
            if (this.instInvoked != null)
                return this.instInvoked;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this.instInvoked = this._io.readU1();
            this._io.seek(_pos);
            return this.instInvoked;
        }
        public void setInstInvoked(int _v) { instInvoked = _v; }
        public void setInstInvoked_ToWrite(boolean _v) { _toWriteInstInvoked = _v; }

        public void _writeInstInvoked() {
            _writeInstInvoked = false;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this._io.writeU1(this.instInvoked);
            this._io.seek(_pos);
        }

        public void _checkInstInvoked() {
        }
        private byte[] instUnusedBySeq;
        private boolean _writeInstUnusedBySeq = false;
        private boolean _toWriteInstUnusedBySeq = true;
        public byte[] instUnusedBySeq() {
            if (_writeInstUnusedBySeq)
                _writeInstUnusedBySeq();
            if (this.instUnusedBySeq != null)
                return this.instUnusedBySeq;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this.instUnusedBySeq = this._io.readBytes(2);
            this._io.seek(_pos);
            return this.instUnusedBySeq;
        }
        public void setInstUnusedBySeq(byte[] _v) { instUnusedBySeq = _v; }
        public void setInstUnusedBySeq_ToWrite(boolean _v) { _toWriteInstUnusedBySeq = _v; }

        public void _writeInstUnusedBySeq() {
            _writeInstUnusedBySeq = false;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this._io.writeBytes(this.instUnusedBySeq);
            this._io.seek(_pos);
        }

        public void _checkInstUnusedBySeq() {
            if (this.instUnusedBySeq.length != 2)
                throw new ConsistencyError("inst_unused_by_seq", this.instUnusedBySeq.length, 2);
        }
        private Integer seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public Integer seqF() { return seqF; }
        public void setSeqF(Integer _v) { seqF = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _root = _v; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
        public void set_parent(InstanceInSized.Wrapper _v) { _parent = _v; }
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
        }

        public void _fetchInstances() {
            this.seqSized._fetchInstances();
            this.seqInStream._fetchInstances();
            instInStream();
            this.instInStream._fetchInstances();
            instSized();
            this.instSized._fetchInstances();
        }

        public void _write_Seq() {
            _writeInstInStream = _toWriteInstInStream;
            _writeInstSized = _toWriteInstSized;
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
                            throw new ConsistencyError("raw(seq_sized)", _this._raw_seqSized.length, 4);
                        parent.writeBytes(_this._raw_seqSized);
                    }
                });
            }
            this.seqSized._write_Seq(_io__raw_seqSized);
            this.seqInStream._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.seqSized._root(), _root()))
                throw new ConsistencyError("seq_sized", this.seqSized._root(), _root());
            if (!Objects.equals(this.seqSized._parent(), this))
                throw new ConsistencyError("seq_sized", this.seqSized._parent(), this);
            if (!Objects.equals(this.seqInStream._root(), _root()))
                throw new ConsistencyError("seq_in_stream", this.seqInStream._root(), _root());
            if (!Objects.equals(this.seqInStream._parent(), this))
                throw new ConsistencyError("seq_in_stream", this.seqInStream._parent(), this);
        }
        private Baz instInStream;
        private boolean _writeInstInStream = false;
        private boolean _toWriteInstInStream = true;
        public Baz instInStream() {
            if (_writeInstInStream)
                _writeInstInStream();
            if (this.instInStream != null)
                return this.instInStream;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 3);
            this.instInStream = new Baz(this._io, this, _root);
            this.instInStream._read();
            this._io.seek(_pos);
            return this.instInStream;
        }
        public void setInstInStream(Baz _v) { instInStream = _v; }
        public void setInstInStream_ToWrite(boolean _v) { _toWriteInstInStream = _v; }

        public void _writeInstInStream() {
            _writeInstInStream = false;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 3);
            this.instInStream._write_Seq(this._io);
            this._io.seek(_pos);
        }

        public void _checkInstInStream() {
            if (!Objects.equals(this.instInStream._root(), _root()))
                throw new ConsistencyError("inst_in_stream", this.instInStream._root(), _root());
            if (!Objects.equals(this.instInStream._parent(), this))
                throw new ConsistencyError("inst_in_stream", this.instInStream._parent(), this);
        }
        private Qux instSized;
        private boolean _writeInstSized = false;
        private boolean _toWriteInstSized = true;
        public Qux instSized() {
            if (_writeInstSized)
                _writeInstSized();
            if (this.instSized != null)
                return this.instSized;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 7);
            this._raw_instSized = this._io.readBytes(4);
            KaitaiStream _io__raw_instSized = new ByteBufferKaitaiStream(this._raw_instSized);
            this.instSized = new Qux(_io__raw_instSized, this, _root);
            this.instSized._read();
            this._io.seek(_pos);
            return this.instSized;
        }
        public void setInstSized(Qux _v) { instSized = _v; }
        public void setInstSized_ToWrite(boolean _v) { _toWriteInstSized = _v; }

        public void _writeInstSized() {
            _writeInstSized = false;
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
                            throw new ConsistencyError("raw(inst_sized)", _this._raw_instSized.length, 4);
                        parent.writeBytes(_this._raw_instSized);
                    }
                });
            }
            this.instSized._write_Seq(_io__raw_instSized);
            this._io.seek(_pos);
        }

        public void _checkInstSized() {
            if (!Objects.equals(this.instSized._root(), _root()))
                throw new ConsistencyError("inst_sized", this.instSized._root(), _root());
            if (!Objects.equals(this.instSized._parent(), this))
                throw new ConsistencyError("inst_sized", this.instSized._parent(), this);
        }
        private Qux seqSized;
        private Bar seqInStream;
        private InstanceInSized _root;
        private InstanceInSized _parent;
        private byte[] _raw_seqSized;
        private byte[] _raw_instSized;
        public Qux seqSized() { return seqSized; }
        public void setSeqSized(Qux _v) { seqSized = _v; }
        public Bar seqInStream() { return seqInStream; }
        public void setSeqInStream(Bar _v) { seqInStream = _v; }
        public InstanceInSized _root() { return _root; }
        public void set_root(InstanceInSized _v) { _root = _v; }
        public InstanceInSized _parent() { return _parent; }
        public void set_parent(InstanceInSized _v) { _parent = _v; }
        public byte[] _raw_seqSized() { return _raw_seqSized; }
        public void set_raw_SeqSized(byte[] _v) { _raw_seqSized = _v; }
        public byte[] _raw_instSized() { return _raw_instSized; }
        public void set_raw_InstSized(byte[] _v) { _raw_instSized = _v; }
    }
    private Wrapper cont;
    private InstanceInSized _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_cont;
    public Wrapper cont() { return cont; }
    public void setCont(Wrapper _v) { cont = _v; }
    public InstanceInSized _root() { return _root; }
    public void set_root(InstanceInSized _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_cont() { return _raw_cont; }
    public void set_raw_Cont(byte[] _v) { _raw_cont = _v; }
}
