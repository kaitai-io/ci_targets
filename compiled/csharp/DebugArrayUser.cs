// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class DebugArrayUser : KaitaiStruct
    {
        public static DebugArrayUser FromFile(string fileName)
        {
            return new DebugArrayUser(new KaitaiStream(fileName));
        }

        public DebugArrayUser(KaitaiStream p__io, KaitaiStruct p__parent = null, DebugArrayUser p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _oneCat = new Cat(m_io, this, m_root);
            _oneCat._read();
            _arrayOfCats = new List<Cat>((int) (3));
            for (var i = 0; i < 3; i++)
            {
                Cat _t_arrayOfCats = new Cat(m_io, this, m_root);
                _t_arrayOfCats._read();
                _arrayOfCats.Add(_t_arrayOfCats);
            }
        }
        public partial class Cat : KaitaiStruct
        {
            public static Cat FromFile(string fileName)
            {
                return new Cat(new KaitaiStream(fileName));
            }

            public Cat(KaitaiStream p__io, DebugArrayUser p__parent = null, DebugArrayUser p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
            }
            public void _read()
            {
                _meow = m_io.ReadU1();
            }
            private byte _meow;
            private DebugArrayUser m_root;
            private DebugArrayUser m_parent;
            public byte Meow { get { return _meow; } }
            public DebugArrayUser M_Root { get { return m_root; } }
            public DebugArrayUser M_Parent { get { return m_parent; } }
        }
        private Cat _oneCat;
        private List<Cat> _arrayOfCats;
        private DebugArrayUser m_root;
        private KaitaiStruct m_parent;
        public Cat OneCat { get { return _oneCat; } }
        public List<Cat> ArrayOfCats { get { return _arrayOfCats; } }
        public DebugArrayUser M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
