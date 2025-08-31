// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class NestedTypeParam extends KaitaiStruct {
    public static NestedTypeParam fromFile(String fileName) throws IOException {
        return new NestedTypeParam(new ByteBufferKaitaiStream(fileName));
    }

    public NestedTypeParam(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypeParam(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NestedTypeParam(KaitaiStream _io, KaitaiStruct _parent, NestedTypeParam _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.mainSeq = new Nested.MyType(this._io, this, _root, 5);
    }

    public void _fetchInstances() {
        this.mainSeq._fetchInstances();
    }
    public static class Nested extends KaitaiStruct {
        public static Nested fromFile(String fileName) throws IOException {
            return new Nested(new ByteBufferKaitaiStream(fileName));
        }

        public Nested(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Nested(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public Nested(KaitaiStream _io, KaitaiStruct _parent, NestedTypeParam _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public static class MyType extends KaitaiStruct {

            public MyType(KaitaiStream _io, long myLen) {
                this(_io, null, null, myLen);
            }

            public MyType(KaitaiStream _io, NestedTypeParam _parent, long myLen) {
                this(_io, _parent, null, myLen);
            }

            public MyType(KaitaiStream _io, NestedTypeParam _parent, NestedTypeParam _root, long myLen) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                this.myLen = myLen;
                _read();
            }
            private void _read() {
                this.body = new String(this._io.readBytes(myLen()), StandardCharsets.US_ASCII);
            }

            public void _fetchInstances() {
            }
            private String body;
            private long myLen;
            private NestedTypeParam _root;
            private NestedTypeParam _parent;
            public String body() { return body; }
            public long myLen() { return myLen; }
            public NestedTypeParam _root() { return _root; }
            public NestedTypeParam _parent() { return _parent; }
        }
        private NestedTypeParam _root;
        private KaitaiStruct _parent;
        public NestedTypeParam _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Nested.MyType mainSeq;
    private NestedTypeParam _root;
    private KaitaiStruct _parent;
    public Nested.MyType mainSeq() { return mainSeq; }
    public NestedTypeParam _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
