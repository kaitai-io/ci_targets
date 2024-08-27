// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailInst : KaitaiStruct
    {
        public static ValidFailInst FromFile(string fileName)
        {
            return new ValidFailInst(new KaitaiStream(fileName));
        }

        public ValidFailInst(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailInst p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_inst = false;
            _read();
        }
        private void _read()
        {
            if (Inst >= 0) {
                _a = m_io.ReadU1();
            }
        }
        private bool f_inst;
        private byte _inst;
        public byte Inst
        {
            get
            {
                if (f_inst)
                    return _inst;
                f_inst = true;
                long _pos = m_io.Pos;
                m_io.Seek(5);
                _inst = m_io.ReadU1();
                if (!(_inst == 80))
                {
                    throw new ValidationNotEqualError(80, _inst, m_io, "/instances/inst");
                }
                m_io.Seek(_pos);
                return _inst;
            }
        }
        private byte? _a;
        private ValidFailInst m_root;
        private KaitaiStruct m_parent;
        public byte? A { get { return _a; } }
        public ValidFailInst M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
