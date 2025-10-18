// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SwitchManualIntSizeElse extends KaitaiStruct {
    public static SwitchManualIntSizeElse fromFile(String fileName) throws IOException {
        return new SwitchManualIntSizeElse(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualIntSizeElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualIntSizeElse(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualIntSizeElse(KaitaiStream _io, KaitaiStruct _parent, SwitchManualIntSizeElse _root) {
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

        public Chunk(KaitaiStream _io, SwitchManualIntSizeElse _parent) {
            this(_io, _parent, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeElse _parent, SwitchManualIntSizeElse _root) {
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
                KaitaiStream _io_body = this._io.substream(size());
                this.body = new Dummy(_io_body, this, _root);
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
                ((Dummy) (this.body))._fetchInstances();
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

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent) {
                this(_io, _parent, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent, SwitchManualIntSizeElse _root) {
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
            public List<String> entries() { return entries; }
            public SwitchManualIntSizeElse _root() { return _root; }
            public SwitchManualIntSizeElse.Chunk _parent() { return _parent; }
            private List<String> entries;
            private SwitchManualIntSizeElse _root;
            private SwitchManualIntSizeElse.Chunk _parent;
        }
        public static class ChunkMeta extends KaitaiStruct {
            public static ChunkMeta fromFile(String fileName) throws IOException {
                return new ChunkMeta(new ByteBufferKaitaiStream(fileName));
            }

            public ChunkMeta(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent) {
                this(_io, _parent, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent, SwitchManualIntSizeElse _root) {
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
            public String title() { return title; }
            public String author() { return author; }
            public SwitchManualIntSizeElse _root() { return _root; }
            public SwitchManualIntSizeElse.Chunk _parent() { return _parent; }
            private String title;
            private String author;
            private SwitchManualIntSizeElse _root;
            private SwitchManualIntSizeElse.Chunk _parent;
        }
        public static class Dummy extends KaitaiStruct {
            public static Dummy fromFile(String fileName) throws IOException {
                return new Dummy(new ByteBufferKaitaiStream(fileName));
            }

            public Dummy(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Dummy(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent) {
                this(_io, _parent, null);
            }

            public Dummy(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent, SwitchManualIntSizeElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.rest = this._io.readBytesFull();
            }

            public void _fetchInstances() {
            }
            public byte[] rest() { return rest; }
            public SwitchManualIntSizeElse _root() { return _root; }
            public SwitchManualIntSizeElse.Chunk _parent() { return _parent; }
            private byte[] rest;
            private SwitchManualIntSizeElse _root;
            private SwitchManualIntSizeElse.Chunk _parent;
        }
        public int code() { return code; }
        public long size() { return size; }
        public KaitaiStruct body() { return body; }
        public SwitchManualIntSizeElse _root() { return _root; }
        public SwitchManualIntSizeElse _parent() { return _parent; }
        private int code;
        private long size;
        private KaitaiStruct body;
        private SwitchManualIntSizeElse _root;
        private SwitchManualIntSizeElse _parent;
    }
    public List<Chunk> chunks() { return chunks; }
    public SwitchManualIntSizeElse _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Chunk> chunks;
    private SwitchManualIntSizeElse _root;
    private KaitaiStruct _parent;
}
