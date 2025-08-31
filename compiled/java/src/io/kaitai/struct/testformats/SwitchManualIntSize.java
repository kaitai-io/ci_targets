// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SwitchManualIntSize extends KaitaiStruct {
    public static SwitchManualIntSize fromFile(String fileName) throws IOException {
        return new SwitchManualIntSize(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualIntSize(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualIntSize(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualIntSize(KaitaiStream _io, KaitaiStruct _parent, SwitchManualIntSize _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.chunks = new ArrayList<Chunk>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.chunks.add(new Chunk(this._io, this, _root));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
        }

        public Chunk(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSize _parent) {
            this(_io, _parent, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSize _parent, SwitchManualIntSize _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            this.size = this._io.readU4le();
            switch (code()) {
            case 17: {
                KaitaiStream _io_body = this._io.substream(size());
                this.body = new ChunkMeta(_io_body, this, _root);
                break;
            }
            case 34: {
                KaitaiStream _io_body = this._io.substream(size());
                this.body = new ChunkDir(_io_body, this, _root);
                break;
            }
            default: {
                this.body = this._io.readBytes(size());
                break;
            }
            }
        }

        public void _fetchInstances() {
            switch (code()) {
            case 17: {
                ((ChunkMeta) (this.body))._fetchInstances();
                break;
            }
            case 34: {
                ((ChunkDir) (this.body))._fetchInstances();
                break;
            }
            default: {
                break;
            }
            }
        }
        public static class ChunkDir extends KaitaiStruct {
            public static ChunkDir fromFile(String fileName) throws IOException {
                return new ChunkDir(new ByteBufferKaitaiStream(fileName));
            }

            public ChunkDir(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSize.Chunk _parent) {
                this(_io, _parent, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSize.Chunk _parent, SwitchManualIntSize _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.entries = new ArrayList<String>();
                {
                    int i = 0;
                    while (!this._io.isEof()) {
                        this.entries.add(new String(this._io.readBytes(4), StandardCharsets.UTF_8));
                        i++;
                    }
                }
            }

            public void _fetchInstances() {
                for (int i = 0; i < this.entries.size(); i++) {
                }
            }
            private List<String> entries;
            private SwitchManualIntSize _root;
            private SwitchManualIntSize.Chunk _parent;
            public List<String> entries() { return entries; }
            public SwitchManualIntSize _root() { return _root; }
            public SwitchManualIntSize.Chunk _parent() { return _parent; }
        }
        public static class ChunkMeta extends KaitaiStruct {
            public static ChunkMeta fromFile(String fileName) throws IOException {
                return new ChunkMeta(new ByteBufferKaitaiStream(fileName));
            }

            public ChunkMeta(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSize.Chunk _parent) {
                this(_io, _parent, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSize.Chunk _parent, SwitchManualIntSize _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.title = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
                this.author = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
            }

            public void _fetchInstances() {
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
        private int code;
        private long size;
        private Object body;
        private SwitchManualIntSize _root;
        private SwitchManualIntSize _parent;
        public int code() { return code; }
        public long size() { return size; }
        public Object body() { return body; }
        public SwitchManualIntSize _root() { return _root; }
        public SwitchManualIntSize _parent() { return _parent; }
    }
    private List<Chunk> chunks;
    private SwitchManualIntSize _root;
    private KaitaiStruct _parent;
    public List<Chunk> chunks() { return chunks; }
    public SwitchManualIntSize _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
