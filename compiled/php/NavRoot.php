<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavRoot extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NavRoot $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_header = new \Kaitai\Struct\Tests\NavRoot\HeaderObj($this->_io, $this, $this->_root);
            $this->_m_index = new \Kaitai\Struct\Tests\NavRoot\IndexObj($this->_io, $this, $this->_root);
        }
        protected $_m_header;
        protected $_m_index;
        public function header() { return $this->_m_header; }
        public function index() { return $this->_m_index; }
    }
}

namespace Kaitai\Struct\Tests\NavRoot {
    class HeaderObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavRoot $_parent = null, \Kaitai\Struct\Tests\NavRoot $_root = null) {
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

namespace Kaitai\Struct\Tests\NavRoot {
    class IndexObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavRoot $_parent = null, \Kaitai\Struct\Tests\NavRoot $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_magic = $this->_io->readBytes(4);
            $this->_m_entries = [];
            $n = $this->_root()->header()->qtyEntries();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_entries[] = new \Kaitai\Struct\Tests\NavRoot\Entry($this->_io, $this, $this->_root);
            }
        }
        protected $_m_magic;
        protected $_m_entries;
        public function magic() { return $this->_m_magic; }
        public function entries() { return $this->_m_entries; }
    }
}

namespace Kaitai\Struct\Tests\NavRoot {
    class Entry extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavRoot\IndexObj $_parent = null, \Kaitai\Struct\Tests\NavRoot $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_filename = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->_root()->header()->filenameLen()), "UTF-8");
        }
        protected $_m_filename;
        public function filename() { return $this->_m_filename; }
    }
}
