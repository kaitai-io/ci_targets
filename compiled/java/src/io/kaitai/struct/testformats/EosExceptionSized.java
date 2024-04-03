// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EosExceptionSized extends KaitaiStruct {
    public static EosExceptionSized fromFile(String fileName) throws IOException {
        return new EosExceptionSized(new ByteBufferKaitaiStream(fileName));
    }

    public EosExceptionSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EosExceptionSized(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EosExceptionSized(KaitaiStream _io, KaitaiStruct _parent, EosExceptionSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_envelope = this._io.substream(6);
        this.envelope = new Data(_io_envelope, this, _root);
    }
    public static class Data extends KaitaiStruct {
        public static Data fromFile(String fileName) throws IOException {
            return new Data(new ByteBufferKaitaiStream(fileName));
        }

        public Data(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Data(KaitaiStream _io, EosExceptionSized _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, EosExceptionSized _parent, EosExceptionSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            KaitaiStream _io_buf = this._io.substream(7);
            this.buf = new Foo(_io_buf, this, _root);
        }
        private Foo buf;
        private EosExceptionSized _root;
        private EosExceptionSized _parent;
        public Foo buf() { return buf; }
        public EosExceptionSized _root() { return _root; }
        public EosExceptionSized _parent() { return _parent; }
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, EosExceptionSized.Data _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, EosExceptionSized.Data _parent, EosExceptionSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }
        private EosExceptionSized _root;
        private EosExceptionSized.Data _parent;
        public EosExceptionSized _root() { return _root; }
        public EosExceptionSized.Data _parent() { return _parent; }
    }
    private Data envelope;
    private EosExceptionSized _root;
    private KaitaiStruct _parent;
    public Data envelope() { return envelope; }
    public EosExceptionSized _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
