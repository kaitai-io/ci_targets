<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParent extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NavParent $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_header = new \Kaitai\Struct\Tests\NavParent\HeaderObj($this->_io, $this, $this->_root);
            $this->_m_index = new \Kaitai\Struct\Tests\NavParent\IndexObj($this->_io, $this, $this->_root);
        }
        protected $_m_header;
        protected $_m_index;
        public function header() { return $this->_m_header; }
        public function index() { return $this->_m_index; }
    }
}

namespace Kaitai\Struct\Tests\NavParent {
    class Entry extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavParent\IndexObj $_parent = null, \Kaitai\Struct\Tests\NavParent $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_filename = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->_parent()->_parent()->header()->filenameLen()), "UTF-8");
        }
        protected $_m_filename;
        public function filename() { return $this->_m_filename; }
    }
}

namespace Kaitai\Struct\Tests\NavParent {
    class HeaderObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavParent $_parent = null, \Kaitai\Struct\Tests\NavParent $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_qtyEntries = $this->_io->readU4le();
            $this->_m_filenameLen = $this->_io->readU4le();
        }
        protected $_m_qtyEntries;
        protected $_m_filenameLen;
        public function qtyEntries() { return $this->_m_qtyEntries; }
        public function filenameLen() { return $this->_m_filenameLen; }
    }
}

namespace Kaitai\Struct\Tests\NavParent {
    class IndexObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavParent $_parent = null, \Kaitai\Struct\Tests\NavParent $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_magic = $this->_io->readBytes(4);
            $this->_m_entries = [];
            $n = $this->_parent()->header()->qtyEntries();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_entries[] = new \Kaitai\Struct\Tests\NavParent\Entry($this->_io, $this, $this->_root);
            }
        }
        protected $_m_magic;
        protected $_m_entries;
        public function magic() { return $this->_m_magic; }
        public function entries() { return $this->_m_entries; }
    }
}
