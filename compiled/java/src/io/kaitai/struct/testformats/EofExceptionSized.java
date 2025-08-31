// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EofExceptionSized extends KaitaiStruct {
    public static EofExceptionSized fromFile(String fileName) throws IOException {
        return new EofExceptionSized(new ByteBufferKaitaiStream(fileName));
    }

    public EofExceptionSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionSized(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionSized(KaitaiStream _io, KaitaiStruct _parent, EofExceptionSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_buf = this._io.substream(13);
        this.buf = new Foo(_io_buf, this, _root);
    }

    public void _fetchInstances() {
        this.buf._fetchInstances();
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, EofExceptionSized _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, EofExceptionSized _parent, EofExceptionSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private EofExceptionSized _root;
        private EofExceptionSized _parent;
        public EofExceptionSized _root() { return _root; }
        public EofExceptionSized _parent() { return _parent; }
    }
    private Foo buf;
    private EofExceptionSized _root;
    private KaitaiStruct _parent;
    public Foo buf() { return buf; }
    public EofExceptionSized _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
