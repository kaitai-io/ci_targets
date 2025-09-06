// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class InstanceInSized extends KaitaiStruct {
    public static InstanceInSized fromFile(String fileName) throws IOException {
        return new InstanceInSized(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceInSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceInSized(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceInSized(KaitaiStream _io, KaitaiStruct _parent, InstanceInSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_cont = this._io.substream(16);
        this.cont = new Wrapper(_io_cont, this, _root);
    }

    public void _fetchInstances() {
        this.cont._fetchInstances();
    }
    public static class Bar extends KaitaiStruct {
        public static Bar fromFile(String fileName) throws IOException {
            return new Bar(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.seqF = this._io.readU1();
        }

        public void _fetchInstances() {
            inst();
            if (this.inst != null) {
            }
        }
        private byte[] inst;
        public byte[] inst() {
            if (this.inst != null)
                return this.inst;
            long _pos = this._io.pos();
            this._io.seek(4 + 1);
            this.inst = this._io.readBytes(3);
            this._io.seek(_pos);
            return this.inst;
        }
        private int seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public int seqF() { return seqF; }
        public InstanceInSized _root() { return _root; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
    }
    public static class Baz extends KaitaiStruct {
        public static Baz fromFile(String fileName) throws IOException {
            return new Baz(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.seqF = this._io.readU1();
        }

        public void _fetchInstances() {
            inst();
            if (this.inst != null) {
            }
        }
        private byte[] inst;
        public byte[] inst() {
            if (this.inst != null)
                return this.inst;
            long _pos = this._io.pos();
            this._io.seek(8 + 1);
            this.inst = this._io.readBytes(3);
            this._io.seek(_pos);
            return this.inst;
        }
        private int seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public int seqF() { return seqF; }
        public InstanceInSized _root() { return _root; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
    }
    public static class Qux extends KaitaiStruct {
        public static Qux fromFile(String fileName) throws IOException {
            return new Qux(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            if (instInvoked() > 0) {
                this.seqF = this._io.readU1();
            }
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
        private Integer instInvoked;
        public Integer instInvoked() {
            if (this.instInvoked != null)
                return this.instInvoked;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this.instInvoked = this._io.readU1();
            this._io.seek(_pos);
            return this.instInvoked;
        }
        private byte[] instUnusedBySeq;
        public byte[] instUnusedBySeq() {
            if (this.instUnusedBySeq != null)
                return this.instUnusedBySeq;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 1);
            this.instUnusedBySeq = this._io.readBytes(2);
            this._io.seek(_pos);
            return this.instUnusedBySeq;
        }
        private Integer seqF;
        private InstanceInSized _root;
        private InstanceInSized.Wrapper _parent;
        public Integer seqF() { return seqF; }
        public InstanceInSized _root() { return _root; }
        public InstanceInSized.Wrapper _parent() { return _parent; }
    }
    public static class Wrapper extends KaitaiStruct {
        public static Wrapper fromFile(String fileName) throws IOException {
            return new Wrapper(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            KaitaiStream _io_seqSized = this._io.substream(4);
            this.seqSized = new Qux(_io_seqSized, this, _root);
            this.seqInStream = new Bar(this._io, this, _root);
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
        private Baz instInStream;
        public Baz instInStream() {
            if (this.instInStream != null)
                return this.instInStream;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 3);
            this.instInStream = new Baz(this._io, this, _root);
            this._io.seek(_pos);
            return this.instInStream;
        }
        private Qux instSized;
        public Qux instSized() {
            if (this.instSized != null)
                return this.instSized;
            long _pos = this._io.pos();
            this._io.seek(_io().pos() + 7);
            KaitaiStream _io_instSized = this._io.substream(4);
            this.instSized = new Qux(_io_instSized, this, _root);
            this._io.seek(_pos);
            return this.instSized;
        }
        private Qux seqSized;
        private Bar seqInStream;
        private InstanceInSized _root;
        private InstanceInSized _parent;
        public Qux seqSized() { return seqSized; }
        public Bar seqInStream() { return seqInStream; }
        public InstanceInSized _root() { return _root; }
        public InstanceInSized _parent() { return _parent; }
    }
    private Wrapper cont;
    private InstanceInSized _root;
    private KaitaiStruct _parent;
    public Wrapper cont() { return cont; }
    public InstanceInSized _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
