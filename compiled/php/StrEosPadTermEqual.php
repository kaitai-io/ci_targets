<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrEosPadTermEqual extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_s1 = $this->_io->readBytes(20);
            $_io__raw_s1 = new \Kaitai\Struct\Stream($this->_m__raw_s1);
            $this->_m_s1 = new \Kaitai\Struct\Tests\StrEosPadTermEqual\S1Type($_io__raw_s1, $this, $this->_root);
            $this->_m__raw_s2 = $this->_io->readBytes(20);
            $_io__raw_s2 = new \Kaitai\Struct\Stream($this->_m__raw_s2);
            $this->_m_s2 = new \Kaitai\Struct\Tests\StrEosPadTermEqual\S2Type($_io__raw_s2, $this, $this->_root);
            $this->_m__raw_s3 = $this->_io->readBytes(20);
            $_io__raw_s3 = new \Kaitai\Struct\Stream($this->_m__raw_s3);
            $this->_m_s3 = new \Kaitai\Struct\Tests\StrEosPadTermEqual\S3Type($_io__raw_s3, $this, $this->_root);
            $this->_m__raw_s4 = $this->_io->readBytes(20);
            $_io__raw_s4 = new \Kaitai\Struct\Stream($this->_m__raw_s4);
            $this->_m_s4 = new \Kaitai\Struct\Tests\StrEosPadTermEqual\S4Type($_io__raw_s4, $this, $this->_root);
        }
        public function s1() { return $this->_m_s1; }
        public function s2() { return $this->_m_s2; }
        public function s3() { return $this->_m_s3; }
        public function s4() { return $this->_m_s4; }
        public function _raw_s1() { return $this->_m__raw_s1; }
        public function _raw_s2() { return $this->_m__raw_s2; }
        public function _raw_s3() { return $this->_m__raw_s3; }
        public function _raw_s4() { return $this->_m__raw_s4; }
        protected $_m_s1;
        protected $_m_s2;
        protected $_m_s3;
        protected $_m_s4;
        protected $_m__raw_s1;
        protected $_m__raw_s2;
        protected $_m__raw_s3;
        protected $_m__raw_s4;
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTermEqual {
    class S1Type extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytesFull(), 64), 64, false), "UTF-8");
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTermEqual {
    class S2Type extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytesFull(), 43), 64, true), "UTF-8");
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTermEqual {
    class S3Type extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytesFull(), 43), 43, false), "UTF-8");
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTermEqual {
    class S4Type extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTermEqual $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytesFull(), 46), 46, true), "UTF-8");
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}
