// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class SwitchManualIntSize extends KaitaiStruct {
    public static SwitchManualIntSize fromFile(String fileName) throws IOException {
        return new SwitchManualIntSize(new KaitaiStream(fileName));
    }

    public SwitchManualIntSize(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public SwitchManualIntSize(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public SwitchManualIntSize(KaitaiStream _io, KaitaiStruct _parent, SwitchManualIntSize _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.chunks = new ArrayList<Chunk>();
        while (!this._io.isEof()) {
            this.chunks.add(new Chunk(this._io, this, _root));
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new KaitaiStream(fileName));
        }

        public Chunk(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSize _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSize _parent, SwitchManualIntSize _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            this.size = this._io.readU4le();
            switch (code()) {
            case 17: {
                this._raw_body = this._io.readBytes(size());
                KaitaiStream _io__raw_body = new KaitaiStream(_raw_body);
                this.body = new ChunkMeta(_io__raw_body, this, _root);
                break;
            }
            case 34: {
                this._raw_body = this._io.readBytes(size());
                KaitaiStream _io__raw_body = new KaitaiStream(_raw_body);
                this.body = new ChunkDir(_io__raw_body, this, _root);
                break;
            }
            default: {
                this.body = this._io.readBytes(size());
                break;
            }
            }
        }
        public static class ChunkMeta extends KaitaiStruct {
            public static ChunkMeta fromFile(String fileName) throws IOException {
                return new ChunkMeta(new KaitaiStream(fileName));
            }

            public ChunkMeta(KaitaiStream _io) {
                super(_io);
                _init();
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSize.Chunk _parent) {
                super(_io);
                this._parent = _parent;
                _init();
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSize.Chunk _parent, SwitchManualIntSize _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _init();
            }

            private void _init() {
                _read();
            }
            private void _read() {
                this.title = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("UTF-8"));
                this.author = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("UTF-8"));
            }
            private String title;
            private String author;
            private SwitchManualIntSize _root;
            private SwitchManualIntSize.Chunk _parent;
            public String title() { return title; }
            public String author() { return author; }
            public SwitchManualIntSize _root() { return _root; }
            public SwitchManualIntSize.Chunk _parent() { return _parent; }
        }
        public static class ChunkDir extends KaitaiStruct {
            public static ChunkDir fromFile(String fileName) throws IOException {
                return new ChunkDir(new KaitaiStream(fileName));
            }

            public ChunkDir(KaitaiStream _io) {
                super(_io);
                _init();
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSize.Chunk _parent) {
                super(_io);
                this._parent = _parent;
                _init();
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSize.Chunk _parent, SwitchManualIntSize _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _init();
            }

            private void _init() {
                _read();
            }
            private void _read() {
                this.entries = new ArrayList<String>();
                while (!this._io.isEof()) {
                    this.entries.add(new String(this._io.readBytes(4), Charset.forName("UTF-8")));
                }
            }
            private ArrayList<String> entries;
            private SwitchManualIntSize _root;
            private SwitchManualIntSize.Chunk _parent;
            public ArrayList<String> entries() { return entries; }
            public SwitchManualIntSize _root() { return _root; }
            public SwitchManualIntSize.Chunk _parent() { return _parent; }
        }
        private int code;
        private long size;
        private Object body;
        private SwitchManualIntSize _root;
        private SwitchManualIntSize _parent;
        private byte[] _raw_body;
        public int code() { return code; }
        public long size() { return size; }
        public Object body() { return body; }
        public SwitchManualIntSize _root() { return _root; }
        public SwitchManualIntSize _parent() { return _parent; }
        public byte[] _raw_body() { return _raw_body; }
    }
    private ArrayList<Chunk> chunks;
    private SwitchManualIntSize _root;
    private KaitaiStruct _parent;
    public ArrayList<Chunk> chunks() { return chunks; }
    public SwitchManualIntSize _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
