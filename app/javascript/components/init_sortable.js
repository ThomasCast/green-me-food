import Sortable from 'sortablejs';

const initListDrag = (divClass, options = {}) => {
  const list = document.querySelector(`.${divClass}`);
  if (list) {
    Sortable.create(list, {
      group: 'list',
      animation: 150,
      ...options,
    });
  }
};

const handleDrop = (e) => {
  console.log(e.to);
  console.log(Number(e.to.dataset.frequency));
  const cart_item_id = Number(e.item.id.split('-')[2]);
  fetch(
    `/cart_items/${cart_item_id}/update_frequency/${e.to.dataset.frequency}`,
    {
      method: 'post',
    }
  )
    .then((response) => response.json())
    .then((data) => {
      console.log(data);
      document.querySelector(data.newTotalLineId).outerHTML = data.newTotalLineContent;
      document.querySelector('.total-cart p').innerText = data.newTotal + ' €';
    });
};

const initSortable = () => {
  initListDrag('once-articles', { onEnd: handleDrop });
  initListDrag('weekly-articles', { onEnd: handleDrop });
  initListDrag('biweekly-articles', { onEnd: handleDrop });
  initListDrag('monthly-articles', { onEnd: handleDrop });
};

export { initSortable };
