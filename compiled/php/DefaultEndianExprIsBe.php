<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class DefaultEndianExprIsBe extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\DefaultEndianExprIsBe $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_docs = [];
        $i = 0;
        while (!$this->_io->isEof()) {
            $this->_m_docs[] = new \Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc($this->_io, $this, $this->_root);
            $i++;
        }
    }
    protected $_m_docs;
    public function docs() { return $this->_m_docs; }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprIsBe;

class Doc extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultEndianExprIsBe $_parent = null, \Kaitai\Struct\Tests\DefaultEndianExprIsBe $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_indicator = $this->_io->readBytes(2);
        $this->_m_main = new \Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc\MainObj($this->_io, $this, $this->_root);
    }
    protected $_m_indicator;
    protected $_m_main;
    public function indicator() { return $this->_m_indicator; }
    public function main() { return $this->_m_main; }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc;

class MainObj extends \Kaitai\Struct\Struct {
    protected $_m__is_le;

    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc $_parent = null, \Kaitai\Struct\Tests\DefaultEndianExprIsBe $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        switch ($this->_parent()->indicator()) {
            case "\x4D\x4D":
                $this->_m__is_le = false;
                break;
            default:
                $this->_m__is_le = true;
                break;
        }

        if (is_null($this->_m__is_le)) {
            throw new \RuntimeException("Unable to decide on endianness");
        } else if ($this->_m__is_le) {
            $this->_readLE();
        } else {
            $this->_readBE();
        }
    }

    private function _readLE() {
        $this->_m_someInt = $this->_io->readU4le();
        $this->_m_someIntBe = $this->_io->readU2be();
        $this->_m_someIntLe = $this->_io->readU2le();
    }

    private function _readBE() {
        $this->_m_someInt = $this->_io->readU4be();
        $this->_m_someIntBe = $this->_io->readU2be();
        $this->_m_someIntLe = $this->_io->readU2le();
    }
    protected $_m_instInt;
    public function instInt() {
        if ($this->_m_instInt !== null)
            return $this->_m_instInt;
        $_pos = $this->_io->pos();
        $this->_io->seek(2);
        if ($this->_m__is_le) {
            $this->_m_instInt = $this->_io->readU4le();
        } else {
            $this->_m_instInt = $this->_io->readU4be();
        }
        $this->_io->seek($_pos);
        return $this->_m_instInt;
    }
    protected $_m_instSub;
    public function instSub() {
        if ($this->_m_instSub !== null)
            return $this->_m_instSub;
        $_pos = $this->_io->pos();
        $this->_io->seek(2);
        if ($this->_m__is_le) {
            $this->_m_instSub = new \Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc\MainObj\SubMainObj($this->_io, $this, $this->_root, $this->_m__is_le);
        } else {
            $this->_m_instSub = new \Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc\MainObj\SubMainObj($this->_io, $this, $this->_root, $this->_m__is_le);
        }
        $this->_io->seek($_pos);
        return $this->_m_instSub;
    }
    protected $_m_someInt;
    protected $_m_someIntBe;
    protected $_m_someIntLe;
    public function someInt() { return $this->_m_someInt; }
    public function someIntBe() { return $this->_m_someIntBe; }
    public function someIntLe() { return $this->_m_someIntLe; }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc\MainObj;

class SubMainObj extends \Kaitai\Struct\Struct {
    protected $_m__is_le;

    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultEndianExprIsBe\Doc\MainObj $_parent = null, \Kaitai\Struct\Tests\DefaultEndianExprIsBe $_root = null, $is_le = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_m__is_le = $is_le;
        $this->_read();
    }

    private function _read() {

        if (is_null($this->_m__is_le)) {
            throw new \RuntimeException("Unable to decide on endianness");
        } else if ($this->_m__is_le) {
            $this->_readLE();
        } else {
            $this->_readBE();
        }
    }

    private function _readLE() {
        $this->_m_foo = $this->_io->readU4le();
    }

    private function _readBE() {
        $this->_m_foo = $this->_io->readU4be();
    }
    protected $_m_foo;
    public function foo() { return $this->_m_foo; }
}
