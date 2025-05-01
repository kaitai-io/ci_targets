<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class SwitchManualIntSizeElse extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_chunks = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_chunks[] = new \Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk($this->_io, $this, $this->_root);
                $i++;
            }
        }
        protected $_m_chunks;
        public function chunks() { return $this->_m_chunks; }
    }
}

namespace Kaitai\Struct\Tests\SwitchManualIntSizeElse {
    class Chunk extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_code = $this->_io->readU1();
            $this->_m_size = $this->_io->readU4le();
            switch ($this->code()) {
                case 17:
                    $this->_m__raw_body = $this->_io->readBytes($this->size());
                    $_io__raw_body = new \Kaitai\Struct\Stream($this->_m__raw_body);
                    $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk\ChunkMeta($_io__raw_body, $this, $this->_root);
                    break;
                case 34:
                    $this->_m__raw_body = $this->_io->readBytes($this->size());
                    $_io__raw_body = new \Kaitai\Struct\Stream($this->_m__raw_body);
                    $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk\ChunkDir($_io__raw_body, $this, $this->_root);
                    break;
                default:
                    $this->_m__raw_body = $this->_io->readBytes($this->size());
                    $_io__raw_body = new \Kaitai\Struct\Stream($this->_m__raw_body);
                    $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk\Dummy($_io__raw_body, $this, $this->_root);
                    break;
            }
        }
        protected $_m_code;
        protected $_m_size;
        protected $_m_body;
        protected $_m__raw_body;
        public function code() { return $this->_m_code; }
        public function size() { return $this->_m_size; }
        public function body() { return $this->_m_body; }
        public function _raw_body() { return $this->_m__raw_body; }
    }
}

namespace Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk {
    class ChunkDir extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_entries = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_entries[] = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(4), "UTF-8");
                $i++;
            }
        }
        protected $_m_entries;
        public function entries() { return $this->_m_entries; }
    }
}

namespace Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk {
    class ChunkMeta extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_title = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
            $this->_m_author = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
        }
        protected $_m_title;
        protected $_m_author;
        public function title() { return $this->_m_title; }
        public function author() { return $this->_m_author; }
    }
}

namespace Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk {
    class Dummy extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse\Chunk $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualIntSizeElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_rest = $this->_io->readBytesFull();
        }
        protected $_m_rest;
        public function rest() { return $this->_m_rest; }
    }
}
