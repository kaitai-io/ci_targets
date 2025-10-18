// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIoTernary : KaitaiStruct
    {
        public static ExprIoTernary FromFile(string fileName)
        {
            return new ExprIoTernary(new KaitaiStream(fileName));
        }

        public ExprIoTernary(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIoTernary p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_oneOrTwoIo = false;
            f_oneOrTwoIoSize1 = false;
            f_oneOrTwoIoSize2 = false;
            f_oneOrTwoIoSizeAdd3 = false;
            f_oneOrTwoObj = false;
            _read();
        }
        private void _read()
        {
            _flag = m_io.ReadU1();
            __raw_obj1 = m_io.ReadBytes(4);
            var io___raw_obj1 = new KaitaiStream(__raw_obj1);
            _obj1 = new One(io___raw_obj1, this, m_root);
            __raw_obj2 = m_io.ReadBytes(8);
            var io___raw_obj2 = new KaitaiStream(__raw_obj2);
            _obj2 = new Two(io___raw_obj2, this, m_root);
        }
        public partial class One : KaitaiStruct
        {
            public static One FromFile(string fileName)
            {
                return new One(new KaitaiStream(fileName));
            }

            public One(KaitaiStream p__io, ExprIoTernary p__parent = null, ExprIoTernary p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _one = m_io.ReadU1();
            }
            public byte One { get { return _one; } }
            public ExprIoTernary M_Root { get { return m_root; } }
            public ExprIoTernary M_Parent { get { return m_parent; } }
            private byte _one;
            private ExprIoTernary m_root;
            private ExprIoTernary m_parent;
        }
        public partial class Two : KaitaiStruct
        {
            public static Two FromFile(string fileName)
            {
                return new Two(new KaitaiStream(fileName));
            }

            public Two(KaitaiStream p__io, ExprIoTernary p__parent = null, ExprIoTernary p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _two = m_io.ReadU1();
            }
            public byte Two { get { return _two; } }
            public ExprIoTernary M_Root { get { return m_root; } }
            public ExprIoTernary M_Parent { get { return m_parent; } }
            private byte _two;
            private ExprIoTernary m_root;
            private ExprIoTernary m_parent;
        }
        public KaitaiStream OneOrTwoIo
        {
            get
            {
                if (f_oneOrTwoIo)
                    return _oneOrTwoIo;
                f_oneOrTwoIo = true;
                _oneOrTwoIo = (KaitaiStream) ((Flag == 64 ? Obj1 : Obj2).M_Io);
                return _oneOrTwoIo;
            }
        }
        public int OneOrTwoIoSize1
        {
            get
            {
                if (f_oneOrTwoIoSize1)
                    return _oneOrTwoIoSize1;
                f_oneOrTwoIoSize1 = true;
                _oneOrTwoIoSize1 = (int) ((Flag == 64 ? Obj1 : Obj2).M_Io.Size);
                return _oneOrTwoIoSize1;
            }
        }
        public int OneOrTwoIoSize2
        {
            get
            {
                if (f_oneOrTwoIoSize2)
                    return _oneOrTwoIoSize2;
                f_oneOrTwoIoSize2 = true;
                _oneOrTwoIoSize2 = (int) (OneOrTwoIo.Size);
                return _oneOrTwoIoSize2;
            }
        }
        public int OneOrTwoIoSizeAdd3
        {
            get
            {
                if (f_oneOrTwoIoSizeAdd3)
                    return _oneOrTwoIoSizeAdd3;
                f_oneOrTwoIoSizeAdd3 = true;
                _oneOrTwoIoSizeAdd3 = (int) ((Flag == 64 ? Obj1 : Obj2).M_Io.Size + 3);
                return _oneOrTwoIoSizeAdd3;
            }
        }
        public KaitaiStruct OneOrTwoObj
        {
            get
            {
                if (f_oneOrTwoObj)
                    return _oneOrTwoObj;
                f_oneOrTwoObj = true;
                _oneOrTwoObj = (KaitaiStruct) ((Flag == 64 ? Obj1 : Obj2));
                return _oneOrTwoObj;
            }
        }
        public byte Flag { get { return _flag; } }
        public One Obj1 { get { return _obj1; } }
        public Two Obj2 { get { return _obj2; } }
        public ExprIoTernary M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawObj1 { get { return __raw_obj1; } }
        public byte[] M_RawObj2 { get { return __raw_obj2; } }
        private bool f_oneOrTwoIo;
        private KaitaiStream _oneOrTwoIo;
        private bool f_oneOrTwoIoSize1;
        private int _oneOrTwoIoSize1;
        private bool f_oneOrTwoIoSize2;
        private int _oneOrTwoIoSize2;
        private bool f_oneOrTwoIoSizeAdd3;
        private int _oneOrTwoIoSizeAdd3;
        private bool f_oneOrTwoObj;
        private KaitaiStruct _oneOrTwoObj;
        private byte _flag;
        private One _obj1;
        private Two _obj2;
        private ExprIoTernary m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_obj1;
        private byte[] __raw_obj2;
    }
}
